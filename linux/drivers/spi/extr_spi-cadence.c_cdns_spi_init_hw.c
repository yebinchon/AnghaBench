
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cdns_spi {scalar_t__ is_decoded_cs; } ;


 int CDNS_SPI_CR ;
 int CDNS_SPI_CR_DEFAULT ;
 int CDNS_SPI_CR_PERI_SEL ;
 int CDNS_SPI_ER ;
 int CDNS_SPI_ER_DISABLE ;
 int CDNS_SPI_ER_ENABLE ;
 int CDNS_SPI_IDR ;
 int CDNS_SPI_ISR ;
 int CDNS_SPI_IXR_ALL ;
 int CDNS_SPI_IXR_RXNEMTY ;
 int CDNS_SPI_RXD ;
 int cdns_spi_read (struct cdns_spi*,int ) ;
 int cdns_spi_write (struct cdns_spi*,int ,int ) ;

__attribute__((used)) static void cdns_spi_init_hw(struct cdns_spi *xspi)
{
 u32 ctrl_reg = CDNS_SPI_CR_DEFAULT;

 if (xspi->is_decoded_cs)
  ctrl_reg |= CDNS_SPI_CR_PERI_SEL;

 cdns_spi_write(xspi, CDNS_SPI_ER, CDNS_SPI_ER_DISABLE);
 cdns_spi_write(xspi, CDNS_SPI_IDR, CDNS_SPI_IXR_ALL);


 while (cdns_spi_read(xspi, CDNS_SPI_ISR) & CDNS_SPI_IXR_RXNEMTY)
  cdns_spi_read(xspi, CDNS_SPI_RXD);

 cdns_spi_write(xspi, CDNS_SPI_ISR, CDNS_SPI_IXR_ALL);
 cdns_spi_write(xspi, CDNS_SPI_CR, ctrl_reg);
 cdns_spi_write(xspi, CDNS_SPI_ER, CDNS_SPI_ER_ENABLE);
}
