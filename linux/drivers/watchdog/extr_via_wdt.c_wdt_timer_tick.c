
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 scalar_t__ WDT_HEARTBEAT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int next_heartbeat ;
 int pr_crit (char*) ;
 scalar_t__ time_before (scalar_t__,int ) ;
 int timer ;
 int watchdog_active (int *) ;
 int wdt_dev ;
 int wdt_reset () ;

__attribute__((used)) static void wdt_timer_tick(struct timer_list *unused)
{
 if (time_before(jiffies, next_heartbeat) ||
    (!watchdog_active(&wdt_dev))) {
  wdt_reset();
  mod_timer(&timer, jiffies + WDT_HEARTBEAT);
 } else
  pr_crit("I will reboot your machine !\n");
}
