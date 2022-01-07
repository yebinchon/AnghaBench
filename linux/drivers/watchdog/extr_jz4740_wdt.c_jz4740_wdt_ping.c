
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct jz4740_wdt_drvdata {scalar_t__ base; } ;


 scalar_t__ TCU_REG_WDT_TCNT ;
 struct jz4740_wdt_drvdata* watchdog_get_drvdata (struct watchdog_device*) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int jz4740_wdt_ping(struct watchdog_device *wdt_dev)
{
 struct jz4740_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);

 writew(0x0, drvdata->base + TCU_REG_WDT_TCNT);
 return 0;
}
