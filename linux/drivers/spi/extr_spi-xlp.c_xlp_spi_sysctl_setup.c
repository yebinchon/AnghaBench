
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp_spi_priv {int dummy; } ;


 int XLP_SPI_MAX_CS ;
 int XLP_SPI_SYSCTRL ;
 int XLP_SPI_SYS_PMEN ;
 int XLP_SPI_SYS_RESET ;
 int xlp_spi_sysctl_write (struct xlp_spi_priv*,int ,int) ;

__attribute__((used)) static void xlp_spi_sysctl_setup(struct xlp_spi_priv *xspi)
{
 int cs;

 for (cs = 0; cs < XLP_SPI_MAX_CS; cs++)
  xlp_spi_sysctl_write(xspi, XLP_SPI_SYSCTRL,
    XLP_SPI_SYS_RESET << cs);
 xlp_spi_sysctl_write(xspi, XLP_SPI_SYSCTRL, XLP_SPI_SYS_PMEN);
}
