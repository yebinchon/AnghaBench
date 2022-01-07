
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct module* owner; int * bus; scalar_t__ of_match_table; } ;
struct slim_driver {TYPE_1__ driver; int probe; scalar_t__ id_table; } ;
struct module {int dummy; } ;


 int EINVAL ;
 int driver_register (TYPE_1__*) ;
 int slimbus_bus ;

int __slim_driver_register(struct slim_driver *drv, struct module *owner)
{

 if (!(drv->driver.of_match_table || drv->id_table) || !drv->probe)
  return -EINVAL;

 drv->driver.bus = &slimbus_bus;
 drv->driver.owner = owner;

 return driver_register(&drv->driver);
}
