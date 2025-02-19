
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int dummy; } ;
struct sprd_wdt {int dummy; } ;


 int SPRD_WDT_CNT_STEP ;
 int sprd_wdt_get_cnt_value (struct sprd_wdt*) ;
 struct sprd_wdt* to_sprd_wdt (struct watchdog_device*) ;

__attribute__((used)) static u32 sprd_wdt_get_timeleft(struct watchdog_device *wdd)
{
 struct sprd_wdt *wdt = to_sprd_wdt(wdd);
 u32 val;

 val = sprd_wdt_get_cnt_value(wdt);
 return val / SPRD_WDT_CNT_STEP;
}
