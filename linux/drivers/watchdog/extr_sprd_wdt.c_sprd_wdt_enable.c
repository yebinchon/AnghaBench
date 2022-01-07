
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_wdt {scalar_t__ base; int enable; int rtc_enable; } ;


 scalar_t__ SPRD_WDT_CTRL ;
 int SPRD_WDT_NEW_VER_EN ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int readl_relaxed (scalar_t__) ;
 int sprd_wdt_lock (scalar_t__) ;
 int sprd_wdt_unlock (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int sprd_wdt_enable(struct sprd_wdt *wdt)
{
 u32 val;
 int ret;

 ret = clk_prepare_enable(wdt->enable);
 if (ret)
  return ret;
 ret = clk_prepare_enable(wdt->rtc_enable);
 if (ret) {
  clk_disable_unprepare(wdt->enable);
  return ret;
 }

 sprd_wdt_unlock(wdt->base);
 val = readl_relaxed(wdt->base + SPRD_WDT_CTRL);
 val |= SPRD_WDT_NEW_VER_EN;
 writel_relaxed(val, wdt->base + SPRD_WDT_CTRL);
 sprd_wdt_lock(wdt->base);
 return 0;
}
