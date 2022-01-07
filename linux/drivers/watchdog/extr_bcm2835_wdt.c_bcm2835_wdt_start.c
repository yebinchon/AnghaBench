
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct watchdog_device {int timeout; } ;
struct bcm2835_wdt {int lock; scalar_t__ base; } ;


 int PM_PASSWORD ;
 scalar_t__ PM_RSTC ;
 int PM_RSTC_WRCFG_CLR ;
 int PM_RSTC_WRCFG_FULL_RESET ;
 scalar_t__ PM_WDOG ;
 int PM_WDOG_TIME_SET ;
 int SECS_TO_WDOG_TICKS (int ) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct bcm2835_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int bcm2835_wdt_start(struct watchdog_device *wdog)
{
 struct bcm2835_wdt *wdt = watchdog_get_drvdata(wdog);
 uint32_t cur;
 unsigned long flags;

 spin_lock_irqsave(&wdt->lock, flags);

 writel_relaxed(PM_PASSWORD | (SECS_TO_WDOG_TICKS(wdog->timeout) &
    PM_WDOG_TIME_SET), wdt->base + PM_WDOG);
 cur = readl_relaxed(wdt->base + PM_RSTC);
 writel_relaxed(PM_PASSWORD | (cur & PM_RSTC_WRCFG_CLR) |
    PM_RSTC_WRCFG_FULL_RESET, wdt->base + PM_RSTC);

 spin_unlock_irqrestore(&wdt->lock, flags);

 return 0;
}
