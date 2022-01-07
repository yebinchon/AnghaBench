
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ acpi_driver_match_device (struct device*,struct device_driver*) ;
 int is_serdev_device (struct device*) ;
 int of_driver_match_device (struct device*,struct device_driver*) ;

__attribute__((used)) static int serdev_device_match(struct device *dev, struct device_driver *drv)
{
 if (!is_serdev_device(dev))
  return 0;


 if (acpi_driver_match_device(dev, drv))
  return 1;

 return of_driver_match_device(dev, drv);
}
