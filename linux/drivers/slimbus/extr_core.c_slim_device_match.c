
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_driver {int id_table; } ;
struct slim_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ of_driver_match_device (struct device*,struct device_driver*) ;
 int slim_match (int ,struct slim_device*) ;
 struct slim_device* to_slim_device (struct device*) ;
 struct slim_driver* to_slim_driver (struct device_driver*) ;

__attribute__((used)) static int slim_device_match(struct device *dev, struct device_driver *drv)
{
 struct slim_device *sbdev = to_slim_device(dev);
 struct slim_driver *sbdrv = to_slim_driver(drv);


 if (of_driver_match_device(dev, drv))
  return 1;

 return !!slim_match(sbdrv->id_table, sbdev);
}
