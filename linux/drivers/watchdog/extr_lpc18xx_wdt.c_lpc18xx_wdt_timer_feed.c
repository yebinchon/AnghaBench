
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct timer_list {int dummy; } ;
struct lpc18xx_wdt_dev {int timer; struct watchdog_device wdt_dev; } ;


 int MSEC_PER_SEC ;
 struct lpc18xx_wdt_dev* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 struct lpc18xx_wdt_dev* lpc18xx_wdt ;
 int lpc18xx_wdt_feed (struct watchdog_device*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int timer ;

__attribute__((used)) static void lpc18xx_wdt_timer_feed(struct timer_list *t)
{
 struct lpc18xx_wdt_dev *lpc18xx_wdt = from_timer(lpc18xx_wdt, t, timer);
 struct watchdog_device *wdt_dev = &lpc18xx_wdt->wdt_dev;

 lpc18xx_wdt_feed(wdt_dev);


 mod_timer(&lpc18xx_wdt->timer, jiffies +
    msecs_to_jiffies((wdt_dev->timeout * MSEC_PER_SEC) / 2));
}
