
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; struct module* owner; } ;
struct typec_altmode_driver {TYPE_1__ driver; int probe; } ;
struct module {int dummy; } ;


 int EINVAL ;
 int driver_register (TYPE_1__*) ;
 int typec_bus ;

int __typec_altmode_register_driver(struct typec_altmode_driver *drv,
        struct module *module)
{
 if (!drv->probe)
  return -EINVAL;

 drv->driver.owner = module;
 drv->driver.bus = &typec_bus;

 return driver_register(&drv->driver);
}
