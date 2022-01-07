
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ccw_driver {int driver; } ;
struct ccw_device {int dummy; } ;


 struct device* driver_find_device_by_name (int *,char const*) ;
 struct ccw_device* to_ccwdev (struct device*) ;

struct ccw_device *get_ccwdev_by_busid(struct ccw_driver *cdrv,
           const char *bus_id)
{
 struct device *dev;

 dev = driver_find_device_by_name(&cdrv->driver, bus_id);

 return dev ? to_ccwdev(dev) : ((void*)0);
}
