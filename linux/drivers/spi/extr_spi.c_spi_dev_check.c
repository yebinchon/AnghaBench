
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {scalar_t__ controller; scalar_t__ chip_select; } ;
struct device {int dummy; } ;


 int EBUSY ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int spi_dev_check(struct device *dev, void *data)
{
 struct spi_device *spi = to_spi_device(dev);
 struct spi_device *new_spi = data;

 if (spi->controller == new_spi->controller &&
     spi->chip_select == new_spi->chip_select)
  return -EBUSY;
 return 0;
}
