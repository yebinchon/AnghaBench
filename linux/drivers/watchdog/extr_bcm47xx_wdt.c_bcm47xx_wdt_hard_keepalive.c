
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct bcm47xx_wdt {int (* timer_set_ms ) (struct bcm47xx_wdt*,int) ;} ;


 struct bcm47xx_wdt* bcm47xx_wdt_get (struct watchdog_device*) ;
 int stub1 (struct bcm47xx_wdt*,int) ;

__attribute__((used)) static int bcm47xx_wdt_hard_keepalive(struct watchdog_device *wdd)
{
 struct bcm47xx_wdt *wdt = bcm47xx_wdt_get(wdd);

 wdt->timer_set_ms(wdt, wdd->timeout * 1000);

 return 0;
}
