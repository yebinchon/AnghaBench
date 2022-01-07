
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 scalar_t__ WDT_INTERVAL ;
 int WDT_PING ;
 int inb_p (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int next_heartbeat ;
 int pr_warn (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_before (scalar_t__,int ) ;
 int timer ;
 int wdt_spinlock ;

__attribute__((used)) static void wdt_timer_ping(struct timer_list *unused)
{



 if (time_before(jiffies, next_heartbeat)) {

  spin_lock(&wdt_spinlock);


  inb_p(WDT_PING);


  mod_timer(&timer, jiffies + WDT_INTERVAL);

  spin_unlock(&wdt_spinlock);

 } else
  pr_warn("Heartbeat lost! Will not ping the watchdog\n");
}
