
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int cs_gpio; int dev; int master; } ;
struct sirfsoc_spi {int hw_cs; } ;


 int BITBANG_CS_INACTIVE ;
 int DRIVER_NAME ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int gpio_is_valid (int) ;
 int gpio_request (int,int ) ;
 void* kmalloc (int,int ) ;
 int spi_get_ctldata (struct spi_device*) ;
 struct sirfsoc_spi* spi_master_get_devdata (int ) ;
 int spi_set_ctldata (struct spi_device*,void*) ;
 int spi_sirfsoc_chipselect (struct spi_device*,int ) ;
 int spi_sirfsoc_config_mode (struct spi_device*) ;

__attribute__((used)) static int spi_sirfsoc_setup(struct spi_device *spi)
{
 struct sirfsoc_spi *sspi;
 int ret = 0;

 sspi = spi_master_get_devdata(spi->master);
 if (spi->cs_gpio == -ENOENT)
  sspi->hw_cs = 1;
 else {
  sspi->hw_cs = 0;
  if (!spi_get_ctldata(spi)) {
   void *cs = kmalloc(sizeof(int), GFP_KERNEL);
   if (!cs) {
    ret = -ENOMEM;
    goto exit;
   }
   ret = gpio_is_valid(spi->cs_gpio);
   if (!ret) {
    dev_err(&spi->dev, "no valid gpio\n");
    ret = -ENOENT;
    goto exit;
   }
   ret = gpio_request(spi->cs_gpio, DRIVER_NAME);
   if (ret) {
    dev_err(&spi->dev, "failed to request gpio\n");
    goto exit;
   }
   spi_set_ctldata(spi, cs);
  }
 }
 spi_sirfsoc_config_mode(spi);
 spi_sirfsoc_chipselect(spi, BITBANG_CS_INACTIVE);
exit:
 return ret;
}
