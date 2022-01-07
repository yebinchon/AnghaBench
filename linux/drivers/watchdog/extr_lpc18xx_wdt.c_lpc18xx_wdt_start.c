
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct lpc18xx_wdt_dev {scalar_t__ base; int timer; } ;


 scalar_t__ LPC18XX_WDT_MOD ;
 unsigned int LPC18XX_WDT_MOD_WDEN ;
 unsigned int LPC18XX_WDT_MOD_WDRESET ;
 int del_timer (int *) ;
 int lpc18xx_wdt_feed (struct watchdog_device*) ;
 unsigned int readl (scalar_t__) ;
 scalar_t__ timer_pending (int *) ;
 struct lpc18xx_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int lpc18xx_wdt_start(struct watchdog_device *wdt_dev)
{
 struct lpc18xx_wdt_dev *lpc18xx_wdt = watchdog_get_drvdata(wdt_dev);
 unsigned int val;

 if (timer_pending(&lpc18xx_wdt->timer))
  del_timer(&lpc18xx_wdt->timer);

 val = readl(lpc18xx_wdt->base + LPC18XX_WDT_MOD);
 val |= LPC18XX_WDT_MOD_WDEN;
 val |= LPC18XX_WDT_MOD_WDRESET;
 writel(val, lpc18xx_wdt->base + LPC18XX_WDT_MOD);






 lpc18xx_wdt_feed(wdt_dev);

 return 0;
}
