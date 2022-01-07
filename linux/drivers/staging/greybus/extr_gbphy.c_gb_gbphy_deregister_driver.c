
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbphy_driver {int driver; } ;


 int driver_unregister (int *) ;

void gb_gbphy_deregister_driver(struct gbphy_driver *driver)
{
 driver_unregister(&driver->driver);
}
