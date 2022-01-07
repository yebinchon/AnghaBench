
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int controller_state; int cs_gpio; } ;


 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int kfree (int ) ;

__attribute__((used)) static void mpc512x_psc_spi_cleanup(struct spi_device *spi)
{
 if (gpio_is_valid(spi->cs_gpio))
  gpio_free(spi->cs_gpio);
 kfree(spi->controller_state);
}
