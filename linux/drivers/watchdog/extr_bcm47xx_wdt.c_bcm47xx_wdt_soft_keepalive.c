
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct bcm47xx_wdt {int soft_ticks; } ;


 int atomic_set (int *,int ) ;
 struct bcm47xx_wdt* bcm47xx_wdt_get (struct watchdog_device*) ;

__attribute__((used)) static int bcm47xx_wdt_soft_keepalive(struct watchdog_device *wdd)
{
 struct bcm47xx_wdt *wdt = bcm47xx_wdt_get(wdd);

 atomic_set(&wdt->soft_ticks, wdd->timeout);

 return 0;
}
