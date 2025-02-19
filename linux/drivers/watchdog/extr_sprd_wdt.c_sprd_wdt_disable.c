
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_wdt {int enable; int rtc_enable; scalar_t__ base; } ;


 scalar_t__ SPRD_WDT_CTRL ;
 int clk_disable_unprepare (int ) ;
 int sprd_wdt_lock (scalar_t__) ;
 int sprd_wdt_unlock (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void sprd_wdt_disable(void *_data)
{
 struct sprd_wdt *wdt = _data;

 sprd_wdt_unlock(wdt->base);
 writel_relaxed(0x0, wdt->base + SPRD_WDT_CTRL);
 sprd_wdt_lock(wdt->base);

 clk_disable_unprepare(wdt->rtc_enable);
 clk_disable_unprepare(wdt->enable);
}
