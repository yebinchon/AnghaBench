
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zx2967_wdt {int dummy; } ;


 int ZX2967_WDT_START_EN ;
 int ZX2967_WDT_START_REG ;
 int ZX2967_WDT_VAL_MASK ;
 int zx2967_wdt_readl (struct zx2967_wdt*,int ) ;
 int zx2967_wdt_writel (struct zx2967_wdt*,int ,int) ;

__attribute__((used)) static void __zx2967_wdt_stop(struct zx2967_wdt *wdt)
{
 u32 val;

 val = zx2967_wdt_readl(wdt, ZX2967_WDT_START_REG);
 val &= ~ZX2967_WDT_START_EN;
 zx2967_wdt_writel(wdt, ZX2967_WDT_START_REG,
   val & ZX2967_WDT_VAL_MASK);
}
