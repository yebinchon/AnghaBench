
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int probe_type; struct module* owner; int * bus; } ;
struct serdev_device_driver {TYPE_1__ driver; } ;
struct module {int dummy; } ;


 int PROBE_PREFER_ASYNCHRONOUS ;
 int driver_register (TYPE_1__*) ;
 int serdev_bus_type ;

int __serdev_device_driver_register(struct serdev_device_driver *sdrv, struct module *owner)
{
 sdrv->driver.bus = &serdev_bus_type;
 sdrv->driver.owner = owner;


        sdrv->driver.probe_type = PROBE_PREFER_ASYNCHRONOUS;

 return driver_register(&sdrv->driver);
}
