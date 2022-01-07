
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sama5d4_wdt {int mr; } ;


 int AT91_WDT_MR ;
 int AT91_WDT_WDDIS ;
 scalar_t__ wdt_enabled ;
 int wdt_read (struct sama5d4_wdt*,int ) ;
 int wdt_write_nosleep (struct sama5d4_wdt*,int ,int) ;

__attribute__((used)) static int sama5d4_wdt_init(struct sama5d4_wdt *wdt)
{
 u32 reg;






 if (wdt_enabled) {
  wdt_write_nosleep(wdt, AT91_WDT_MR, wdt->mr);
 } else {
  reg = wdt_read(wdt, AT91_WDT_MR);
  if (!(reg & AT91_WDT_WDDIS))
   wdt_write_nosleep(wdt, AT91_WDT_MR,
       reg | AT91_WDT_WDDIS);
 }
 return 0;
}
