
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int dummy; } ;
struct max63xx_wdt {int (* ping ) (struct max63xx_wdt*) ;TYPE_1__* timeout; int (* set ) (struct max63xx_wdt*,int ) ;} ;
struct TYPE_2__ {scalar_t__ tdelay; int wdset; } ;


 int stub1 (struct max63xx_wdt*,int ) ;
 int stub2 (struct max63xx_wdt*) ;
 struct max63xx_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int max63xx_wdt_start(struct watchdog_device *wdd)
{
 struct max63xx_wdt *wdt = watchdog_get_drvdata(wdd);

 wdt->set(wdt, wdt->timeout->wdset);


 if (wdt->timeout->tdelay == 0)
  wdt->ping(wdt);
 return 0;
}
