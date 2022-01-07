
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct bcm47xx_wdt {int (* timer_set ) (struct bcm47xx_wdt*,int ) ;int soft_timer; } ;


 struct bcm47xx_wdt* bcm47xx_wdt_get (struct watchdog_device*) ;
 int del_timer_sync (int *) ;
 int stub1 (struct bcm47xx_wdt*,int ) ;

__attribute__((used)) static int bcm47xx_wdt_soft_stop(struct watchdog_device *wdd)
{
 struct bcm47xx_wdt *wdt = bcm47xx_wdt_get(wdd);

 del_timer_sync(&wdt->soft_timer);
 wdt->timer_set(wdt, 0);

 return 0;
}
