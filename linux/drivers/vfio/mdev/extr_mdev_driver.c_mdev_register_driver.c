
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int dummy; } ;
struct TYPE_2__ {struct module* owner; int * bus; int name; } ;
struct mdev_driver {TYPE_1__ driver; int name; } ;


 int driver_register (TYPE_1__*) ;
 int mdev_bus_type ;

int mdev_register_driver(struct mdev_driver *drv, struct module *owner)
{

 drv->driver.name = drv->name;
 drv->driver.bus = &mdev_bus_type;
 drv->driver.owner = owner;


 return driver_register(&drv->driver);
}
