export /var/lib/jenkins=C:/Temp/Jenkins
mkdir $JENKINS_HOME
wget http://3.76.251.167:8080/jnlpJars/jenkins-cli.jar
curl -L https://get.jenkins.io/war-stable/latest/jenkins.war -o $JENKINS_HOME/jenkins.war -k
wget https://github.com/jenkinsci/plugin-installation-manager-tool/releases/download/2.12.15/jenkins-plugin-manager-2.12.15.jar
sudo java -jar jenkins-plugin-manager.jar --war $JENKINS_HOME/jenkins.war --plugin-download-directory $JENKINS_HOME/plugins --plugin-file plugins.yaml
