#!/bin/bash -x

echo '## Update'
apt-get -y update

echo '## Install packages'
apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties --upgrade
apt-get -y install libgdbm-dev libncurses5-dev automake libtool bison ed gawk libc6-dev libffi-dev git-core --upgrade
apt-get -y install software-properties-common python-software-properties python gcc g++ make man curl unzip --upgrade
apt-get -y install python3-pip python3-dev python3-setuptools --upgrade
apt-get -y install apache2-utils dnsutils wget --upgrade
apt-get -y install supervisor nginx --upgrade
apt-get -y install mosh --upgrade
# Jupyter libSM.so.6 error
apt-get -y install libsm6 libxrender1 libfontconfig1 --upgrade 
# xgboost plots
apt-get -y install graphviz --upgrade
# htop
apt-get -y install htop --upgrade
# vtop
apt-get -y install util-vserver --upgrade

echo '## Setup python'
apt-get -y install python-dev --upgrade
apt-get -y install python-setuptools --upgrade
apt-get -y install python3.4-venv
#apt-get -y install python-pip
easy_install pip
easy_install virtualenv
easy_install3 pip
pip3 install virtualenv

# go
apt-get install mercurial --upgrade

# aws cli
pip install awscli --upgrade
pip install botocore boto3 --upgrade

# two factor - run: google-authenticator
apt-get -y install libpam-google-authenticator

# vim 8
add-apt-repository ppa:jonathonf/vim

apt -y update
apt -y install vim



