
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_client {int driver; } ;


 int driver_unregister (int *) ;

void ntb_transport_unregister_client(struct ntb_transport_client *drv)
{
 driver_unregister(&drv->driver);
}
