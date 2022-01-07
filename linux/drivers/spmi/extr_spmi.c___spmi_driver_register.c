
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct module* owner; int * bus; } ;
struct spmi_driver {TYPE_1__ driver; } ;
struct module {int dummy; } ;


 int driver_register (TYPE_1__*) ;
 int spmi_bus_type ;

int __spmi_driver_register(struct spmi_driver *sdrv, struct module *owner)
{
 sdrv->driver.bus = &spmi_bus_type;
 sdrv->driver.owner = owner;
 return driver_register(&sdrv->driver);
}
