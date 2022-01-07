
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct maple_driver {TYPE_1__ drv; } ;


 int EINVAL ;
 int driver_register (TYPE_1__*) ;
 int maple_bus_type ;

int maple_driver_register(struct maple_driver *drv)
{
 if (!drv)
  return -EINVAL;

 drv->drv.bus = &maple_bus_type;

 return driver_register(&drv->drv);
}
