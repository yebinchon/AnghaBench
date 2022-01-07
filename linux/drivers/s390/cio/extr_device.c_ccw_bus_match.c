
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct ccw_driver {struct ccw_device_id* ids; } ;
struct ccw_device_id {int driver_info; } ;
struct TYPE_2__ {int driver_info; } ;
struct ccw_device {TYPE_1__ id; } ;


 struct ccw_device_id* ccw_device_id_match (struct ccw_device_id const*,TYPE_1__*) ;
 struct ccw_device* to_ccwdev (struct device*) ;
 struct ccw_driver* to_ccwdrv (struct device_driver*) ;

__attribute__((used)) static int
ccw_bus_match (struct device * dev, struct device_driver * drv)
{
 struct ccw_device *cdev = to_ccwdev(dev);
 struct ccw_driver *cdrv = to_ccwdrv(drv);
 const struct ccw_device_id *ids = cdrv->ids, *found;

 if (!ids)
  return 0;

 found = ccw_device_id_match(ids, &cdev->id);
 if (!found)
  return 0;

 cdev->id.driver_info = found->driver_info;

 return 1;
}
