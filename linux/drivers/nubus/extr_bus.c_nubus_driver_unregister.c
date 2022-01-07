
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nubus_driver {int driver; } ;


 int driver_unregister (int *) ;

void nubus_driver_unregister(struct nubus_driver *ndrv)
{
 driver_unregister(&ndrv->driver);
}
