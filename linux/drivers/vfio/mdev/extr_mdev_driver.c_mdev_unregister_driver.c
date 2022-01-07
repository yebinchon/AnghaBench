
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_driver {int driver; } ;


 int driver_unregister (int *) ;

void mdev_unregister_driver(struct mdev_driver *drv)
{
 driver_unregister(&drv->driver);
}
