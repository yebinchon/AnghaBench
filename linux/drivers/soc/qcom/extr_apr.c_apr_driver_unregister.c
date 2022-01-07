
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apr_driver {int driver; } ;


 int driver_unregister (int *) ;

void apr_driver_unregister(struct apr_driver *drv)
{
 driver_unregister(&drv->driver);
}
