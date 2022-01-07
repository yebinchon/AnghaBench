
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct bcm2835_wdt {int dummy; } ;


 int __bcm2835_restart (struct bcm2835_wdt*) ;
 struct bcm2835_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int bcm2835_restart(struct watchdog_device *wdog,
      unsigned long action, void *data)
{
 struct bcm2835_wdt *wdt = watchdog_get_drvdata(wdog);

 __bcm2835_restart(wdt);

 return 0;
}
