
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int status; int pretimeout; int timeout; } ;
struct sprd_wdt {scalar_t__ base; } ;


 int SPRD_WDT_CNT_EN_BIT ;
 scalar_t__ SPRD_WDT_CTRL ;
 int SPRD_WDT_INT_EN_BIT ;
 int SPRD_WDT_RST_EN_BIT ;
 int WDOG_HW_RUNNING ;
 int readl_relaxed (scalar_t__) ;
 int set_bit (int ,int *) ;
 int sprd_wdt_load_value (struct sprd_wdt*,int ,int ) ;
 int sprd_wdt_lock (scalar_t__) ;
 int sprd_wdt_unlock (scalar_t__) ;
 struct sprd_wdt* to_sprd_wdt (struct watchdog_device*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int sprd_wdt_start(struct watchdog_device *wdd)
{
 struct sprd_wdt *wdt = to_sprd_wdt(wdd);
 u32 val;
 int ret;

 ret = sprd_wdt_load_value(wdt, wdd->timeout, wdd->pretimeout);
 if (ret)
  return ret;

 sprd_wdt_unlock(wdt->base);
 val = readl_relaxed(wdt->base + SPRD_WDT_CTRL);
 val |= SPRD_WDT_CNT_EN_BIT | SPRD_WDT_INT_EN_BIT | SPRD_WDT_RST_EN_BIT;
 writel_relaxed(val, wdt->base + SPRD_WDT_CTRL);
 sprd_wdt_lock(wdt->base);
 set_bit(WDOG_HW_RUNNING, &wdd->status);

 return 0;
}
