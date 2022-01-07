
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timeout; } ;
struct lpc18xx_wdt_dev {int clk_rate; scalar_t__ base; TYPE_1__ wdt_dev; } ;


 unsigned int DIV_ROUND_UP (int,int ) ;
 int LPC18XX_WDT_CLK_DIV ;
 scalar_t__ LPC18XX_WDT_TC ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void __lpc18xx_wdt_set_timeout(struct lpc18xx_wdt_dev *lpc18xx_wdt)
{
 unsigned int val;

 val = DIV_ROUND_UP(lpc18xx_wdt->wdt_dev.timeout * lpc18xx_wdt->clk_rate,
      LPC18XX_WDT_CLK_DIV);
 writel(val, lpc18xx_wdt->base + LPC18XX_WDT_TC);
}
