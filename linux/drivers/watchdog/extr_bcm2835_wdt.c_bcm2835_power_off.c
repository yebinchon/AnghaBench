
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835_wdt {scalar_t__ base; } ;


 int PM_PASSWORD ;
 scalar_t__ PM_RSTS ;
 int PM_RSTS_RASPBERRYPI_HALT ;
 int __bcm2835_restart (struct bcm2835_wdt*) ;
 struct bcm2835_wdt* bcm2835_power_off_wdt ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void bcm2835_power_off(void)
{
 struct bcm2835_wdt *wdt = bcm2835_power_off_wdt;
 u32 val;






 val = readl_relaxed(wdt->base + PM_RSTS);
 val |= PM_PASSWORD | PM_RSTS_RASPBERRYPI_HALT;
 writel_relaxed(val, wdt->base + PM_RSTS);


 __bcm2835_restart(wdt);
}
