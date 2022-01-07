
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_master {int dummy; } ;
struct spi_device {unsigned int chip_select; int mode; int cs_gpio; struct spi_master* master; } ;
struct lantiq_ssc_spi {unsigned int base_cs; int dev; } ;


 int EINVAL ;
 int LTQ_SPI_GPOCON ;
 unsigned int LTQ_SPI_GPOCON_ISCSBN_S ;
 int SPI_CS_HIGH ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*,unsigned int,unsigned int) ;
 scalar_t__ gpio_is_valid (int ) ;
 int lantiq_ssc_maskl (struct lantiq_ssc_spi*,int ,int,int ) ;
 struct lantiq_ssc_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int lantiq_ssc_setup(struct spi_device *spidev)
{
 struct spi_master *master = spidev->master;
 struct lantiq_ssc_spi *spi = spi_master_get_devdata(master);
 unsigned int cs = spidev->chip_select;
 u32 gpocon;


 if (gpio_is_valid(spidev->cs_gpio))
  return 0;

 dev_dbg(spi->dev, "using internal chipselect %u\n", cs);

 if (cs < spi->base_cs) {
  dev_err(spi->dev,
   "chipselect %i too small (min %i)\n", cs, spi->base_cs);
  return -EINVAL;
 }


 gpocon = 1 << ((cs - spi->base_cs) + LTQ_SPI_GPOCON_ISCSBN_S);


 if (spidev->mode & SPI_CS_HIGH)
  gpocon |= 1 << (cs - spi->base_cs);

 lantiq_ssc_maskl(spi, 0, gpocon, LTQ_SPI_GPOCON);

 return 0;
}
