
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct sp805_wdt {int clk; int lock; scalar_t__ base; } ;


 int LOCK ;
 int UNLOCK ;
 scalar_t__ WDTCONTROL ;
 scalar_t__ WDTLOCK ;
 int clk_disable_unprepare (int ) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct sp805_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int wdt_disable(struct watchdog_device *wdd)
{
 struct sp805_wdt *wdt = watchdog_get_drvdata(wdd);

 spin_lock(&wdt->lock);

 writel_relaxed(UNLOCK, wdt->base + WDTLOCK);
 writel_relaxed(0, wdt->base + WDTCONTROL);
 writel_relaxed(LOCK, wdt->base + WDTLOCK);


 readl_relaxed(wdt->base + WDTLOCK);
 spin_unlock(&wdt->lock);

 clk_disable_unprepare(wdt->clk);

 return 0;
}
