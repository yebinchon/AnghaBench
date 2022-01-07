
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anybuss_client_driver {int driver; } ;


 void driver_unregister (int *) ;

void anybuss_client_driver_unregister(struct anybuss_client_driver *drv)
{
 return driver_unregister(&drv->driver);
}
