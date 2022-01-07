
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int * bus; } ;
struct ccw_driver {struct device_driver driver; } ;


 int ccw_bus_type ;
 int driver_register (struct device_driver*) ;

int ccw_driver_register(struct ccw_driver *cdriver)
{
 struct device_driver *drv = &cdriver->driver;

 drv->bus = &ccw_bus_type;

 return driver_register(drv);
}
