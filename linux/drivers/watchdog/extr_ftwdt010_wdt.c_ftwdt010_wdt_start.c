
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int timeout; } ;
struct ftwdt010_wdt {scalar_t__ base; scalar_t__ has_irq; } ;


 scalar_t__ FTWDT010_WDCR ;
 scalar_t__ FTWDT010_WDLOAD ;
 scalar_t__ FTWDT010_WDRESTART ;
 int WDCR_CLOCK_5MHZ ;
 int WDCR_ENABLE ;
 int WDCR_SYS_RST ;
 int WDCR_WDINTR ;
 int WDRESTART_MAGIC ;
 int WDT_CLOCK ;
 struct ftwdt010_wdt* to_ftwdt010_wdt (struct watchdog_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int ftwdt010_wdt_start(struct watchdog_device *wdd)
{
 struct ftwdt010_wdt *gwdt = to_ftwdt010_wdt(wdd);
 u32 enable;

 writel(wdd->timeout * WDT_CLOCK, gwdt->base + FTWDT010_WDLOAD);
 writel(WDRESTART_MAGIC, gwdt->base + FTWDT010_WDRESTART);

 enable = WDCR_CLOCK_5MHZ | WDCR_SYS_RST;
 writel(enable, gwdt->base + FTWDT010_WDCR);
 if (gwdt->has_irq)
  enable |= WDCR_WDINTR;
 enable |= WDCR_ENABLE;
 writel(enable, gwdt->base + FTWDT010_WDCR);

 return 0;
}
