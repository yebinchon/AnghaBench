
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct css_driver {TYPE_1__ drv; } ;


 int css_bus_type ;
 int driver_register (TYPE_1__*) ;

int css_driver_register(struct css_driver *cdrv)
{
 cdrv->drv.bus = &css_bus_type;
 return driver_register(&cdrv->drv);
}
