
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm2835_wdt {scalar_t__ base; } ;


 scalar_t__ PM_RSTC ;
 int PM_RSTC_WRCFG_FULL_RESET ;
 int readl (scalar_t__) ;

__attribute__((used)) static bool bcm2835_wdt_is_running(struct bcm2835_wdt *wdt)
{
 uint32_t cur;

 cur = readl(wdt->base + PM_RSTC);

 return !!(cur & PM_RSTC_WRCFG_FULL_RESET);
}
