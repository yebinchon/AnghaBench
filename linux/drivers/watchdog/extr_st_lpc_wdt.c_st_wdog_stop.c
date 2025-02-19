
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct st_wdog {scalar_t__ base; } ;


 scalar_t__ LPC_WDT_OFF ;
 struct st_wdog* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int st_wdog_stop(struct watchdog_device *wdd)
{
 struct st_wdog *st_wdog = watchdog_get_drvdata(wdd);

 writel_relaxed(0, st_wdog->base + LPC_WDT_OFF);

 return 0;
}
