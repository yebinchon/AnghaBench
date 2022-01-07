
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; int cs_gpio; int dev; int master; scalar_t__ controller_state; } ;


 int ENOENT ;
 int SPI_CS_HIGH ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int gpio_direction_output (int ,int) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_request (int ,int ) ;
 scalar_t__ spi_master_get_devdata (int ) ;

__attribute__((used)) static int meson_spicc_setup(struct spi_device *spi)
{
 int ret = 0;

 if (!spi->controller_state)
  spi->controller_state = spi_master_get_devdata(spi->master);
 else if (gpio_is_valid(spi->cs_gpio))
  goto out_gpio;
 else if (spi->cs_gpio == -ENOENT)
  return 0;

 if (gpio_is_valid(spi->cs_gpio)) {
  ret = gpio_request(spi->cs_gpio, dev_name(&spi->dev));
  if (ret) {
   dev_err(&spi->dev, "failed to request cs gpio\n");
   return ret;
  }
 }

out_gpio:
 ret = gpio_direction_output(spi->cs_gpio,
   !(spi->mode & SPI_CS_HIGH));

 return ret;
}
