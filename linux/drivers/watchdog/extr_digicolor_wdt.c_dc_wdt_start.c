
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct dc_wdt {int clk; } ;


 int clk_get_rate (int ) ;
 int dc_wdt_set (struct dc_wdt*,int) ;
 struct dc_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int dc_wdt_start(struct watchdog_device *wdog)
{
 struct dc_wdt *wdt = watchdog_get_drvdata(wdog);

 dc_wdt_set(wdt, wdog->timeout * clk_get_rate(wdt->clk));

 return 0;
}
