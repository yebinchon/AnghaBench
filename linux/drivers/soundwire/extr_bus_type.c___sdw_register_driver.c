
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shutdown; int remove; int probe; struct module* owner; int * bus; } ;
struct sdw_driver {TYPE_1__ driver; scalar_t__ shutdown; scalar_t__ remove; int name; int probe; } ;
struct module {int dummy; } ;


 int EINVAL ;
 int driver_register (TYPE_1__*) ;
 int pr_err (char*,int ) ;
 int sdw_bus_type ;
 int sdw_drv_probe ;
 int sdw_drv_remove ;
 int sdw_drv_shutdown ;

int __sdw_register_driver(struct sdw_driver *drv, struct module *owner)
{
 drv->driver.bus = &sdw_bus_type;

 if (!drv->probe) {
  pr_err("driver %s didn't provide SDW probe routine\n",
         drv->name);
  return -EINVAL;
 }

 drv->driver.owner = owner;
 drv->driver.probe = sdw_drv_probe;

 if (drv->remove)
  drv->driver.remove = sdw_drv_remove;

 if (drv->shutdown)
  drv->driver.shutdown = sdw_drv_shutdown;

 return driver_register(&drv->driver);
}
