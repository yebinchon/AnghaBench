
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct ts4800_wdt {int dummy; } ;


 int TS4800_WDT_DISABLE ;
 int ts4800_write_feed (struct ts4800_wdt*,int ) ;
 struct ts4800_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int ts4800_wdt_stop(struct watchdog_device *wdd)
{
 struct ts4800_wdt *wdt = watchdog_get_drvdata(wdd);

 ts4800_write_feed(wdt, TS4800_WDT_DISABLE);
 return 0;
}
