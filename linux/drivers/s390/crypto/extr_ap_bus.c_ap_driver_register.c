
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct device_driver {char* name; struct module* owner; int remove; int probe; int * bus; } ;
struct ap_driver {struct device_driver driver; } ;


 int ENODEV ;
 int ap_bus_type ;
 int ap_device_probe ;
 int ap_device_remove ;
 int driver_register (struct device_driver*) ;
 int initialised ;

int ap_driver_register(struct ap_driver *ap_drv, struct module *owner,
         char *name)
{
 struct device_driver *drv = &ap_drv->driver;

 if (!initialised)
  return -ENODEV;

 drv->bus = &ap_bus_type;
 drv->probe = ap_device_probe;
 drv->remove = ap_device_remove;
 drv->owner = owner;
 drv->name = name;
 return driver_register(drv);
}
