
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct jz4740_wdt_drvdata {scalar_t__ base; } ;


 scalar_t__ TCU_REG_WDT_TCER ;
 int jz4740_timer_disable_watchdog () ;
 struct jz4740_wdt_drvdata* watchdog_get_drvdata (struct watchdog_device*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int jz4740_wdt_stop(struct watchdog_device *wdt_dev)
{
 struct jz4740_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);

 writeb(0x0, drvdata->base + TCU_REG_WDT_TCER);
 jz4740_timer_disable_watchdog();

 return 0;
}
