
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct dc_wdt {scalar_t__ base; } ;


 scalar_t__ TIMER_A_CONTROL ;
 struct dc_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int dc_wdt_stop(struct watchdog_device *wdog)
{
 struct dc_wdt *wdt = watchdog_get_drvdata(wdog);

 writel_relaxed(0, wdt->base + TIMER_A_CONTROL);

 return 0;
}
