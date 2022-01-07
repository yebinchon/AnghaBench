
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * bus; int name; } ;
struct vme_driver {TYPE_1__ driver; int devices; int name; } ;


 int INIT_LIST_HEAD (int *) ;
 int __vme_register_driver (struct vme_driver*,unsigned int) ;
 int driver_register (TYPE_1__*) ;
 int driver_unregister (TYPE_1__*) ;
 int vme_bus_type ;

int vme_register_driver(struct vme_driver *drv, unsigned int ndevs)
{
 int err;

 drv->driver.name = drv->name;
 drv->driver.bus = &vme_bus_type;
 INIT_LIST_HEAD(&drv->devices);

 err = driver_register(&drv->driver);
 if (err)
  return err;

 err = __vme_register_driver(drv, ndevs);
 if (err)
  driver_unregister(&drv->driver);

 return err;
}
