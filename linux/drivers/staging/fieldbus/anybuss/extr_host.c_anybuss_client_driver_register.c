
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct anybuss_client_driver {TYPE_1__ driver; } ;


 int anybus_bus ;
 int driver_register (TYPE_1__*) ;

int anybuss_client_driver_register(struct anybuss_client_driver *drv)
{
 drv->driver.bus = &anybus_bus;
 return driver_register(&drv->driver);
}
