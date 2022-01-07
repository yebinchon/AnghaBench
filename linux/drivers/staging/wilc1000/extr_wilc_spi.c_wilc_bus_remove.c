
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc {scalar_t__ gpio_irq; } ;
struct spi_device {int dummy; } ;


 int gpiod_put (scalar_t__) ;
 struct wilc* spi_get_drvdata (struct spi_device*) ;
 int wilc_netdev_cleanup (struct wilc*) ;

__attribute__((used)) static int wilc_bus_remove(struct spi_device *spi)
{
 struct wilc *wilc = spi_get_drvdata(spi);


 if (wilc->gpio_irq)
  gpiod_put(wilc->gpio_irq);
 wilc_netdev_cleanup(wilc);
 return 0;
}
