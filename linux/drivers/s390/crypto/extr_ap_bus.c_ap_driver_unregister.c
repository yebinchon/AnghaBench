
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_driver {int driver; } ;


 int driver_unregister (int *) ;

void ap_driver_unregister(struct ap_driver *ap_drv)
{
 driver_unregister(&ap_drv->driver);
}
