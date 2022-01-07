
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct ftwdt010_wdt {scalar_t__ base; } ;


 scalar_t__ FTWDT010_WDCR ;
 struct ftwdt010_wdt* to_ftwdt010_wdt (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int ftwdt010_wdt_stop(struct watchdog_device *wdd)
{
 struct ftwdt010_wdt *gwdt = to_ftwdt010_wdt(wdd);

 writel(0, gwdt->base + FTWDT010_WDCR);

 return 0;
}
