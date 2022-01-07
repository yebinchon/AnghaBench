
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sama5d4_wdt {scalar_t__ last_ping; scalar_t__ reg_base; } ;


 scalar_t__ WDT_DELAY ;
 scalar_t__ jiffies ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;
 int udelay (int) ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static void wdt_write_nosleep(struct sama5d4_wdt *wdt, u32 field, u32 val)
{
 if (time_before(jiffies, wdt->last_ping + WDT_DELAY))
  udelay(123);
 writel_relaxed(val, wdt->reg_base + field);
 wdt->last_ping = jiffies;
}
