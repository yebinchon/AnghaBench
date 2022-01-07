
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct nubus_driver {TYPE_1__ driver; } ;


 int driver_register (TYPE_1__*) ;
 int nubus_bus_type ;

int nubus_driver_register(struct nubus_driver *ndrv)
{
 ndrv->driver.bus = &nubus_bus_type;
 return driver_register(&ndrv->driver);
}
