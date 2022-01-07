
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; int name; } ;
struct rio_driver {TYPE_1__ driver; int name; } ;


 int driver_register (TYPE_1__*) ;
 int rio_bus_type ;

int rio_register_driver(struct rio_driver *rdrv)
{

 rdrv->driver.name = rdrv->name;
 rdrv->driver.bus = &rio_bus_type;


 return driver_register(&rdrv->driver);
}
