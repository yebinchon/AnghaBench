
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct spi_device {int chip_select; int mode; scalar_t__ cs_gpiod; int master; struct davinci_spi_config* controller_data; } ;
struct davinci_spi_config {scalar_t__ wdelay; } ;
struct davinci_spi {scalar_t__ base; } ;


 int BITBANG_CS_ACTIVE ;
 int CS_DEFAULT ;
 scalar_t__ SPIDAT1 ;
 int SPIDAT1_CSHOLD_MASK ;
 int SPIDAT1_WDEL ;
 int SPI_CS_WORD ;
 int gpiod_set_value (scalar_t__,int) ;
 int iowrite16 (int,scalar_t__) ;
 struct davinci_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void davinci_spi_chipselect(struct spi_device *spi, int value)
{
 struct davinci_spi *dspi;
 struct davinci_spi_config *spicfg = spi->controller_data;
 u8 chip_sel = spi->chip_select;
 u16 spidat1 = CS_DEFAULT;

 dspi = spi_master_get_devdata(spi->master);


 if (spicfg && spicfg->wdelay)
  spidat1 |= SPIDAT1_WDEL;





 if (spi->cs_gpiod) {






  if (value == BITBANG_CS_ACTIVE)
   gpiod_set_value(spi->cs_gpiod, 1);
  else
   gpiod_set_value(spi->cs_gpiod, 0);
 } else {
  if (value == BITBANG_CS_ACTIVE) {
   if (!(spi->mode & SPI_CS_WORD))
    spidat1 |= SPIDAT1_CSHOLD_MASK;
   spidat1 &= ~(0x1 << chip_sel);
  }
 }

 iowrite16(spidat1, dspi->base + SPIDAT1 + 2);
}
