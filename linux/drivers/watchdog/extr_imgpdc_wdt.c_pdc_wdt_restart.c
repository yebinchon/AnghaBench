
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct pdc_wdt_dev {scalar_t__ base; } ;


 scalar_t__ PDC_WDT_SOFT_RESET ;
 struct pdc_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int pdc_wdt_restart(struct watchdog_device *wdt_dev,
      unsigned long action, void *data)
{
 struct pdc_wdt_dev *wdt = watchdog_get_drvdata(wdt_dev);


 writel(0x1, wdt->base + PDC_WDT_SOFT_RESET);

 return 0;
}
