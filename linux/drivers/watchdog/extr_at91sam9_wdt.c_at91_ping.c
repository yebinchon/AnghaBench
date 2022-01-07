
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct at91wdt {scalar_t__ heartbeat; int timer; int wdd; int next_heartbeat; } ;


 int at91_wdt_reset (struct at91wdt*) ;
 struct at91wdt* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pr_crit (char*) ;
 scalar_t__ time_before (scalar_t__,int ) ;
 int timer ;
 int watchdog_active (int *) ;
 struct at91wdt* wdt ;

__attribute__((used)) static void at91_ping(struct timer_list *t)
{
 struct at91wdt *wdt = from_timer(wdt, t, timer);
 if (time_before(jiffies, wdt->next_heartbeat) ||
     !watchdog_active(&wdt->wdd)) {
  at91_wdt_reset(wdt);
  mod_timer(&wdt->timer, jiffies + wdt->heartbeat);
 } else {
  pr_crit("I will reset your machine !\n");
 }
}
