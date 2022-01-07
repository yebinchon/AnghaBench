
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835_wdt {scalar_t__ base; } ;


 int PM_PASSWORD ;
 scalar_t__ PM_RSTC ;
 int PM_RSTC_WRCFG_CLR ;
 int PM_RSTC_WRCFG_FULL_RESET ;
 scalar_t__ PM_WDOG ;
 int mdelay (int) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void __bcm2835_restart(struct bcm2835_wdt *wdt)
{
 u32 val;


 writel_relaxed(10 | PM_PASSWORD, wdt->base + PM_WDOG);
 val = readl_relaxed(wdt->base + PM_RSTC);
 val &= PM_RSTC_WRCFG_CLR;
 val |= PM_PASSWORD | PM_RSTC_WRCFG_FULL_RESET;
 writel_relaxed(val, wdt->base + PM_RSTC);


 mdelay(1);
}
