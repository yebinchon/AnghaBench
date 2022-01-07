
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct ls1x_wdt_drvdata {scalar_t__ base; } ;


 scalar_t__ WDT_EN ;
 struct ls1x_wdt_drvdata* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int ls1x_wdt_start(struct watchdog_device *wdt_dev)
{
 struct ls1x_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);

 writel(0x1, drvdata->base + WDT_EN);

 return 0;
}
