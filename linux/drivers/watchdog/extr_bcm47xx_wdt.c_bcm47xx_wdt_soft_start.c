
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct bcm47xx_wdt {int soft_timer; } ;


 struct bcm47xx_wdt* bcm47xx_wdt_get (struct watchdog_device*) ;
 int bcm47xx_wdt_soft_keepalive (struct watchdog_device*) ;
 int bcm47xx_wdt_soft_timer_tick (int *) ;

__attribute__((used)) static int bcm47xx_wdt_soft_start(struct watchdog_device *wdd)
{
 struct bcm47xx_wdt *wdt = bcm47xx_wdt_get(wdd);

 bcm47xx_wdt_soft_keepalive(wdd);
 bcm47xx_wdt_soft_timer_tick(&wdt->soft_timer);

 return 0;
}
