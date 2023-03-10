FROM rocker/rstudio:4.1.3

# update ubuntu repos and install tidyverse system dependencies
RUN apt update -y
RUN apt install -y libcurl4-openssl-dev libssl-dev libxml2-dev zlib1g-dev

# Install R packages
RUN Rscript -e "install.packages('remotes', repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "remotes::install_version('glmnet','4.1-4')"
RUN Rscript -e "remotes::install_version('leaps','3.1')"
RUN Rscript -e "remotes::install_version('tidyverse','1.3.1')"
RUN Rscript -e "remotes::install_version('testthat','3.1.3')"
RUN Rscript -e "remotes::install_version('here','1.0.1')"
RUN Rscript -e "remotes::install_version('knitr','1.38')"
RUN Rscript -e "remotes::install_github('rstudio/ggcheck')"  # version number not applicable in installation, using 0.0.4
