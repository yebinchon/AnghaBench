
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ccwgroup_driver {int driver; } ;
struct ccwgroup_device {int dummy; } ;


 struct device* driver_find_device_by_name (int *,char*) ;
 struct ccwgroup_device* to_ccwgroupdev (struct device*) ;

struct ccwgroup_device *get_ccwgroupdev_by_busid(struct ccwgroup_driver *gdrv,
       char *bus_id)
{
 struct device *dev;

 dev = driver_find_device_by_name(&gdrv->driver, bus_id);

 return dev ? to_ccwgroupdev(dev) : ((void*)0);
}
