
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {struct spi_device* driver_override; TYPE_1__* controller; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* cleanup ) (struct spi_device*) ;} ;


 int kfree (struct spi_device*) ;
 int spi_controller_put (TYPE_1__*) ;
 int stub1 (struct spi_device*) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static void spidev_release(struct device *dev)
{
 struct spi_device *spi = to_spi_device(dev);


 if (spi->controller->cleanup)
  spi->controller->cleanup(spi);

 spi_controller_put(spi->controller);
 kfree(spi->driver_override);
 kfree(spi);
}
