# Base image https://hub.docker.com/u/rocker/
FROM rocker/r-base:latest

## create directories
RUN mkdir -p /01_data
RUN mkdir -p /02_code
RUN mkdir -p /03_output

## copy files
COPY /02_code/install_packages.R /02_code/install_packages.R
COPY /02_code/organise_rnaseq_docker.R /02_code/organise_rnaseq_docker.R


## install R-packages
RUN Rscript /02_code/install_packages.R
