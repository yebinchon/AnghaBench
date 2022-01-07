
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 scalar_t__ WDT_INTERVAL ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int next_heartbeat ;
 int pr_warn (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_before (scalar_t__,int ) ;
 int timer ;
 int wdt_spinlock ;
 int wdtmrctl ;
 int writew (int,int ) ;

__attribute__((used)) static void wdt_timer_ping(struct timer_list *unused)
{



 if (time_before(jiffies, next_heartbeat)) {

  spin_lock(&wdt_spinlock);
  writew(0xAAAA, wdtmrctl);
  writew(0x5555, wdtmrctl);
  spin_unlock(&wdt_spinlock);


  mod_timer(&timer, jiffies + WDT_INTERVAL);
 } else
  pr_warn("Heartbeat lost! Will not ping the watchdog\n");
}
