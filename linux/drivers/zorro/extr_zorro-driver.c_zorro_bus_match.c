
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zorro_driver {struct zorro_device_id* id_table; } ;
struct zorro_device_id {scalar_t__ id; } ;
struct zorro_dev {scalar_t__ id; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ ZORRO_WILDCARD ;
 struct zorro_dev* to_zorro_dev (struct device*) ;
 struct zorro_driver* to_zorro_driver (struct device_driver*) ;

__attribute__((used)) static int zorro_bus_match(struct device *dev, struct device_driver *drv)
{
 struct zorro_dev *z = to_zorro_dev(dev);
 struct zorro_driver *zorro_drv = to_zorro_driver(drv);
 const struct zorro_device_id *ids = zorro_drv->id_table;

 if (!ids)
  return 0;

 while (ids->id) {
  if (ids->id == ZORRO_WILDCARD || ids->id == z->id)
   return 1;
  ids++;
 }
 return 0;
}
