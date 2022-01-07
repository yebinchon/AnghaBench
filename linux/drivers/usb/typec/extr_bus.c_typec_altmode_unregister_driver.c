
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_altmode_driver {int driver; } ;


 int driver_unregister (int *) ;

void typec_altmode_unregister_driver(struct typec_altmode_driver *drv)
{
 driver_unregister(&drv->driver);
}
