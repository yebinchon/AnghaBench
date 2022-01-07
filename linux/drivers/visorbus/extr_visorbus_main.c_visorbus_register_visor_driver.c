
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int owner; int remove; int probe; int * bus; int name; } ;
struct visor_driver {TYPE_1__ driver; int owner; int name; int resume; int pause; int remove; int probe; } ;


 int EINVAL ;
 int ENODEV ;
 int driver_register (TYPE_1__*) ;
 int initialized ;
 int visorbus_type ;
 int visordriver_probe_device ;
 int visordriver_remove_device ;

int visorbus_register_visor_driver(struct visor_driver *drv)
{

 if (!initialized)
  return -ENODEV;
 if (!drv->probe)
  return -EINVAL;
 if (!drv->remove)
  return -EINVAL;
 if (!drv->pause)
  return -EINVAL;
 if (!drv->resume)
  return -EINVAL;

 drv->driver.name = drv->name;
 drv->driver.bus = &visorbus_type;
 drv->driver.probe = visordriver_probe_device;
 drv->driver.remove = visordriver_remove_device;
 drv->driver.owner = drv->owner;
 return driver_register(&drv->driver);
}
