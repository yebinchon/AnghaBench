
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; scalar_t__ chip_select; int dev; int cs_gpio; } ;


 int EINVAL ;
 int SPI_CS_HIGH ;
 int SPI_NO_CS ;
 int dev_err (int *,char*,int ,int) ;
 int dev_warn (int *,char*) ;
 int gpio_direction_output (int ,int) ;
 scalar_t__ gpio_is_valid (int ) ;

__attribute__((used)) static int bcm2835aux_spi_setup(struct spi_device *spi)
{
 int ret;


 if (spi->mode & SPI_NO_CS)
  return 0;
 if (gpio_is_valid(spi->cs_gpio)) {




  ret = gpio_direction_output(spi->cs_gpio,
         (spi->mode & SPI_CS_HIGH) ? 0 : 1);
  if (ret)
   dev_err(&spi->dev,
    "could not set gpio %i as output: %i\n",
    spi->cs_gpio, ret);

  return ret;
 }
 dev_warn(&spi->dev,
   "Native CS is not supported - please configure cs-gpio in device-tree\n");

 if (spi->chip_select == 0)
  return 0;

 dev_warn(&spi->dev, "Native CS is not working for cs > 0\n");

 return -EINVAL;
}
