
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct timer_list {int dummy; } ;
struct TYPE_2__ {int timeout; } ;
struct bcm47xx_wdt {int soft_timer; int (* timer_set_ms ) (struct bcm47xx_wdt*,int ) ;int soft_ticks; int max_timer_ms; TYPE_1__ wdd; } ;


 scalar_t__ HZ ;
 int atomic_dec_and_test (int *) ;
 struct bcm47xx_wdt* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int min (int,int ) ;
 int mod_timer (int *,scalar_t__) ;
 int pr_crit (char*) ;
 int soft_timer ;
 int stub1 (struct bcm47xx_wdt*,int ) ;
 struct bcm47xx_wdt* wdt ;

__attribute__((used)) static void bcm47xx_wdt_soft_timer_tick(struct timer_list *t)
{
 struct bcm47xx_wdt *wdt = from_timer(wdt, t, soft_timer);
 u32 next_tick = min(wdt->wdd.timeout * 1000, wdt->max_timer_ms);

 if (!atomic_dec_and_test(&wdt->soft_ticks)) {
  wdt->timer_set_ms(wdt, next_tick);
  mod_timer(&wdt->soft_timer, jiffies + HZ);
 } else {
  pr_crit("Watchdog will fire soon!!!\n");
 }
}
