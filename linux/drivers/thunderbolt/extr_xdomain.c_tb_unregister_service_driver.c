
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_service_driver {int driver; } ;


 int driver_unregister (int *) ;

void tb_unregister_service_driver(struct tb_service_driver *drv)
{
 driver_unregister(&drv->driver);
}
