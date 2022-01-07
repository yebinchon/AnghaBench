
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ of_node; } ;
struct spi_device {int cs_gpio; TYPE_1__ dev; } ;
struct s3c64xx_spi_csinfo {int dummy; } ;


 int ENOENT ;
 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int kfree (struct s3c64xx_spi_csinfo*) ;
 struct s3c64xx_spi_csinfo* spi_get_ctldata (struct spi_device*) ;
 int spi_set_ctldata (struct spi_device*,int *) ;

__attribute__((used)) static void s3c64xx_spi_cleanup(struct spi_device *spi)
{
 struct s3c64xx_spi_csinfo *cs = spi_get_ctldata(spi);

 if (gpio_is_valid(spi->cs_gpio)) {
  gpio_free(spi->cs_gpio);
  if (spi->dev.of_node)
   kfree(cs);
  else {





   spi->cs_gpio = -ENOENT;
  }
 }

 spi_set_ctldata(spi, ((void*)0));
}
