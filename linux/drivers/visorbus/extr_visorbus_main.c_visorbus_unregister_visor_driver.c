
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_driver {int driver; } ;


 int driver_unregister (int *) ;

void visorbus_unregister_visor_driver(struct visor_driver *drv)
{
 driver_unregister(&drv->driver);
}
