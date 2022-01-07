
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_driver {int driver; } ;


 int driver_unregister (int *) ;

void sdw_unregister_driver(struct sdw_driver *drv)
{
 driver_unregister(&drv->driver);
}
