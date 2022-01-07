
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long timeout; } ;
struct pdc_wdt_dev {scalar_t__ base; TYPE_1__ wdt_dev; int wdt_clk; } ;


 scalar_t__ PDC_WDT_CONFIG ;
 unsigned int PDC_WDT_CONFIG_DELAY_MASK ;
 unsigned long clk_get_rate (int ) ;
 int order_base_2 (unsigned long) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void __pdc_wdt_set_timeout(struct pdc_wdt_dev *wdt)
{
 unsigned long clk_rate = clk_get_rate(wdt->wdt_clk);
 unsigned int val;

 val = readl(wdt->base + PDC_WDT_CONFIG) & ~PDC_WDT_CONFIG_DELAY_MASK;
 val |= order_base_2(wdt->wdt_dev.timeout * clk_rate) - 1;
 writel(val, wdt->base + PDC_WDT_CONFIG);
}
