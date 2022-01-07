
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 scalar_t__ WDT_INTERVAL ;
 int inb_p (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int next_heartbeat ;
 int pr_warn (char*) ;
 scalar_t__ time_before (scalar_t__,int ) ;
 int timer ;
 int wdt_start ;

__attribute__((used)) static void wdt_timer_ping(struct timer_list *unused)
{



 if (time_before(jiffies, next_heartbeat)) {

  inb_p(wdt_start);

  mod_timer(&timer, jiffies + WDT_INTERVAL);
 } else
  pr_warn("Heartbeat lost! Will not ping the watchdog\n");
}
