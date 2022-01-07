
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ulpi_driver {struct ulpi_device_id* id_table; } ;
struct ulpi_device_id {scalar_t__ vendor; scalar_t__ product; } ;
struct TYPE_2__ {scalar_t__ vendor; scalar_t__ product; } ;
struct ulpi {TYPE_1__ id; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int of_driver_match_device (struct device*,struct device_driver*) ;
 struct ulpi* to_ulpi_dev (struct device*) ;
 struct ulpi_driver* to_ulpi_driver (struct device_driver*) ;

__attribute__((used)) static int ulpi_match(struct device *dev, struct device_driver *driver)
{
 struct ulpi_driver *drv = to_ulpi_driver(driver);
 struct ulpi *ulpi = to_ulpi_dev(dev);
 const struct ulpi_device_id *id;


 if (ulpi->id.vendor == 0)
  return of_driver_match_device(dev, driver);

 for (id = drv->id_table; id->vendor; id++)
  if (id->vendor == ulpi->id.vendor &&
      id->product == ulpi->id.product)
   return 1;

 return 0;
}
