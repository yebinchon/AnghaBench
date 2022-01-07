
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct zx2967_wdt {int dummy; } ;
struct watchdog_device {unsigned int timeout; } ;


 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 unsigned int ZX2967_WDT_CFG_DIV (unsigned int) ;
 int ZX2967_WDT_CFG_REG ;
 unsigned int ZX2967_WDT_CLK_FREQ ;
 unsigned int ZX2967_WDT_DIV_DEFAULT ;
 int ZX2967_WDT_LOAD_REG ;
 unsigned int ZX2967_WDT_MAX_COUNT ;
 unsigned int ZX2967_WDT_VAL_MASK ;
 struct zx2967_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int zx2967_wdt_refresh (struct zx2967_wdt*) ;
 int zx2967_wdt_writel (struct zx2967_wdt*,int ,unsigned int) ;

__attribute__((used)) static int
zx2967_wdt_set_timeout(struct watchdog_device *wdd, unsigned int timeout)
{
 struct zx2967_wdt *wdt = watchdog_get_drvdata(wdd);
 unsigned int divisor = ZX2967_WDT_DIV_DEFAULT;
 u32 count;

 count = timeout * ZX2967_WDT_CLK_FREQ;
 if (count > divisor * ZX2967_WDT_MAX_COUNT)
  divisor = DIV_ROUND_UP(count, ZX2967_WDT_MAX_COUNT);
 count = DIV_ROUND_UP(count, divisor);
 zx2967_wdt_writel(wdt, ZX2967_WDT_CFG_REG,
   ZX2967_WDT_CFG_DIV(divisor) & ZX2967_WDT_VAL_MASK);
 zx2967_wdt_writel(wdt, ZX2967_WDT_LOAD_REG,
   count & ZX2967_WDT_VAL_MASK);
 zx2967_wdt_refresh(wdt);
 wdd->timeout = (count * divisor) / ZX2967_WDT_CLK_FREQ;

 return 0;
}
