
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct men_z069_drv {int mem; int wdt; } ;
struct mcb_device {int dummy; } ;


 struct men_z069_drv* mcb_get_drvdata (struct mcb_device*) ;
 int mcb_release_mem (int ) ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static void men_z069_remove(struct mcb_device *dev)
{
 struct men_z069_drv *drv = mcb_get_drvdata(dev);

 watchdog_unregister_device(&drv->wdt);
 mcb_release_mem(drv->mem);
}
