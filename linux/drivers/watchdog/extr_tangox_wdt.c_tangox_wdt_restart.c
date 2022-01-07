
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct tangox_wdt_device {scalar_t__ base; } ;


 scalar_t__ WD_COUNTER ;
 struct tangox_wdt_device* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int tangox_wdt_restart(struct watchdog_device *wdt,
         unsigned long action, void *data)
{
 struct tangox_wdt_device *dev = watchdog_get_drvdata(wdt);

 writel(1, dev->base + WD_COUNTER);

 return 0;
}
