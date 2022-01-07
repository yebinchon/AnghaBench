
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int mode; TYPE_1__* controller; int cs_gpio; scalar_t__ cs_gpiod; } ;
struct TYPE_2__ {int flags; int (* set_cs ) (struct spi_device*,int) ;} ;


 int SPI_CS_HIGH ;
 int SPI_MASTER_GPIO_SS ;
 int SPI_NO_CS ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value_cansleep (int ,int) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int stub1 (struct spi_device*,int) ;
 int stub2 (struct spi_device*,int) ;

__attribute__((used)) static void spi_set_cs(struct spi_device *spi, bool enable)
{
 if (spi->mode & SPI_CS_HIGH)
  enable = !enable;

 if (spi->cs_gpiod || gpio_is_valid(spi->cs_gpio)) {







  if (!(spi->mode & SPI_NO_CS)) {
   if (spi->cs_gpiod)
    gpiod_set_value_cansleep(spi->cs_gpiod,
        !enable);
   else
    gpio_set_value_cansleep(spi->cs_gpio, !enable);
  }

  if ((spi->controller->flags & SPI_MASTER_GPIO_SS) &&
      spi->controller->set_cs)
   spi->controller->set_cs(spi, !enable);
 } else if (spi->controller->set_cs) {
  spi->controller->set_cs(spi, !enable);
 }
}
