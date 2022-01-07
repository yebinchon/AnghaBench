
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct dc_wdt {int dummy; } ;


 int dc_wdt_set (struct dc_wdt*,int) ;
 int mdelay (int) ;
 struct dc_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int dc_wdt_restart(struct watchdog_device *wdog, unsigned long action,
     void *data)
{
 struct dc_wdt *wdt = watchdog_get_drvdata(wdog);

 dc_wdt_set(wdt, 1);

 mdelay(500);

 return 0;
}
