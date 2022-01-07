
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct lpc18xx_wdt_dev {unsigned int clk_rate; scalar_t__ base; } ;


 unsigned int LPC18XX_WDT_CLK_DIV ;
 scalar_t__ LPC18XX_WDT_TV ;
 unsigned int readl (scalar_t__) ;
 struct lpc18xx_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static unsigned int lpc18xx_wdt_get_timeleft(struct watchdog_device *wdt_dev)
{
 struct lpc18xx_wdt_dev *lpc18xx_wdt = watchdog_get_drvdata(wdt_dev);
 unsigned int val;

 val = readl(lpc18xx_wdt->base + LPC18XX_WDT_TV);
 return (val * LPC18XX_WDT_CLK_DIV) / lpc18xx_wdt->clk_rate;
}
