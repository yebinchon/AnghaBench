
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int dummy; } ;
struct sp805_wdt {scalar_t__ base; } ;


 int ENABLE_MASK ;
 scalar_t__ WDTCONTROL ;
 int readl_relaxed (scalar_t__) ;
 struct sp805_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static bool wdt_is_running(struct watchdog_device *wdd)
{
 struct sp805_wdt *wdt = watchdog_get_drvdata(wdd);
 u32 wdtcontrol = readl_relaxed(wdt->base + WDTCONTROL);

 return (wdtcontrol & ENABLE_MASK) == ENABLE_MASK;
}
