
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct tb_service_driver {TYPE_1__ driver; } ;


 int driver_register (TYPE_1__*) ;
 int tb_bus_type ;

int tb_register_service_driver(struct tb_service_driver *drv)
{
 drv->driver.bus = &tb_bus_type;
 return driver_register(&drv->driver);
}
