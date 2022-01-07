
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct a21_wdt_drv {int * gpios; } ;


 size_t GPIO_WD_ENAB ;
 int gpiod_set_value (int ,int) ;
 struct a21_wdt_drv* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int a21_wdt_start(struct watchdog_device *wdt)
{
 struct a21_wdt_drv *drv = watchdog_get_drvdata(wdt);

 gpiod_set_value(drv->gpios[GPIO_WD_ENAB], 1);

 return 0;
}
