
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct lpc18xx_wdt_dev {int timer; } ;


 int lpc18xx_wdt_timer_feed (int *) ;
 struct lpc18xx_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int lpc18xx_wdt_stop(struct watchdog_device *wdt_dev)
{
 struct lpc18xx_wdt_dev *lpc18xx_wdt = watchdog_get_drvdata(wdt_dev);

 lpc18xx_wdt_timer_feed(&lpc18xx_wdt->timer);

 return 0;
}
