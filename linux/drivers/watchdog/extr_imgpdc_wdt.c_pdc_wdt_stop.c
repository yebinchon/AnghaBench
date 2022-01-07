
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct pdc_wdt_dev {scalar_t__ base; } ;


 scalar_t__ PDC_WDT_CONFIG ;
 unsigned int PDC_WDT_CONFIG_ENABLE ;
 int pdc_wdt_keepalive (struct watchdog_device*) ;
 unsigned int readl (scalar_t__) ;
 struct pdc_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int pdc_wdt_stop(struct watchdog_device *wdt_dev)
{
 unsigned int val;
 struct pdc_wdt_dev *wdt = watchdog_get_drvdata(wdt_dev);

 val = readl(wdt->base + PDC_WDT_CONFIG);
 val &= ~PDC_WDT_CONFIG_ENABLE;
 writel(val, wdt->base + PDC_WDT_CONFIG);


 pdc_wdt_keepalive(wdt_dev);

 return 0;
}
