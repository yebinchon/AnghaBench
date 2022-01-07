
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct ntb_transport_client {TYPE_1__ driver; } ;


 int ENODEV ;
 int driver_register (TYPE_1__*) ;
 scalar_t__ list_empty (int *) ;
 int ntb_transport_bus ;
 int ntb_transport_list ;

int ntb_transport_register_client(struct ntb_transport_client *drv)
{
 drv->driver.bus = &ntb_transport_bus;

 if (list_empty(&ntb_transport_list))
  return -ENODEV;

 return driver_register(&drv->driver);
}
