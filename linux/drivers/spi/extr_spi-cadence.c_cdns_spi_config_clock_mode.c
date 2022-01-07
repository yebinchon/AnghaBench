
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {int mode; int master; } ;
struct cdns_spi {int dummy; } ;


 int CDNS_SPI_CR ;
 int CDNS_SPI_CR_CPHA ;
 int CDNS_SPI_CR_CPOL ;
 int CDNS_SPI_ER ;
 int CDNS_SPI_ER_DISABLE ;
 int CDNS_SPI_ER_ENABLE ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int cdns_spi_read (struct cdns_spi*,int ) ;
 int cdns_spi_write (struct cdns_spi*,int ,int) ;
 struct cdns_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void cdns_spi_config_clock_mode(struct spi_device *spi)
{
 struct cdns_spi *xspi = spi_master_get_devdata(spi->master);
 u32 ctrl_reg, new_ctrl_reg;

 new_ctrl_reg = cdns_spi_read(xspi, CDNS_SPI_CR);
 ctrl_reg = new_ctrl_reg;


 new_ctrl_reg &= ~(CDNS_SPI_CR_CPHA | CDNS_SPI_CR_CPOL);
 if (spi->mode & SPI_CPHA)
  new_ctrl_reg |= CDNS_SPI_CR_CPHA;
 if (spi->mode & SPI_CPOL)
  new_ctrl_reg |= CDNS_SPI_CR_CPOL;

 if (new_ctrl_reg != ctrl_reg) {






  cdns_spi_write(xspi, CDNS_SPI_ER, CDNS_SPI_ER_DISABLE);
  cdns_spi_write(xspi, CDNS_SPI_CR, new_ctrl_reg);
  cdns_spi_write(xspi, CDNS_SPI_ER, CDNS_SPI_ER_ENABLE);
 }
}
