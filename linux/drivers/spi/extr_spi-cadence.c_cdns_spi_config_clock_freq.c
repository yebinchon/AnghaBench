
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_transfer {unsigned long speed_hz; } ;
struct spi_device {int master; } ;
struct cdns_spi {unsigned long speed_hz; int ref_clk; } ;


 int CDNS_SPI_BAUD_DIV_MAX ;
 int CDNS_SPI_BAUD_DIV_MIN ;
 int CDNS_SPI_BAUD_DIV_SHIFT ;
 int CDNS_SPI_CR ;
 int CDNS_SPI_CR_BAUD_DIV ;
 int cdns_spi_read (struct cdns_spi*,int ) ;
 int cdns_spi_write (struct cdns_spi*,int ,int) ;
 unsigned long clk_get_rate (int ) ;
 struct cdns_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void cdns_spi_config_clock_freq(struct spi_device *spi,
           struct spi_transfer *transfer)
{
 struct cdns_spi *xspi = spi_master_get_devdata(spi->master);
 u32 ctrl_reg, baud_rate_val;
 unsigned long frequency;

 frequency = clk_get_rate(xspi->ref_clk);

 ctrl_reg = cdns_spi_read(xspi, CDNS_SPI_CR);


 if (xspi->speed_hz != transfer->speed_hz) {

  baud_rate_val = CDNS_SPI_BAUD_DIV_MIN;
  while ((baud_rate_val < CDNS_SPI_BAUD_DIV_MAX) &&
         (frequency / (2 << baud_rate_val)) > transfer->speed_hz)
   baud_rate_val++;

  ctrl_reg &= ~CDNS_SPI_CR_BAUD_DIV;
  ctrl_reg |= baud_rate_val << CDNS_SPI_BAUD_DIV_SHIFT;

  xspi->speed_hz = frequency / (2 << baud_rate_val);
 }
 cdns_spi_write(xspi, CDNS_SPI_CR, ctrl_reg);
}
