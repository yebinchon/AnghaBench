
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct css_driver {int drv; } ;


 int driver_unregister (int *) ;

void css_driver_unregister(struct css_driver *cdrv)
{
 driver_unregister(&cdrv->drv);
}
