FROM ruby:2.4.2

ENV RAILS_ENV development
ENV APP_ROOT /var/www
ENV DOMAIN http://localhost:3000

WORKDIR $APP_ROOT

RUN apt-get update 
RUN apt-get install -y nodejs npm
RUN gem install rails -v 5.1.2 
RUN apt-get install -y tmux
RUN echo 'export PATH=$PATH:/usr/local/bundle/bin' >> ~/.bashrc
RUN apt-get install -y vim
RUN apt-get install -y less
RUN apt-get install -y nano
RUN apt-get install -y tree
RUN apt-get install -y imagemagick --fix-missing
