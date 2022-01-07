
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int WDT_ENABLE ;
 scalar_t__ WDT_INTERVAL ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ next_heartbeat ;
 int pr_info (char*) ;
 int timeout ;
 int timer ;
 int wdt_change (int ) ;

__attribute__((used)) static void wdt_startup(void)
{
 next_heartbeat = jiffies + (timeout * HZ);


 mod_timer(&timer, jiffies + WDT_INTERVAL);

 wdt_change(WDT_ENABLE);

 pr_info("Watchdog timer is now enabled\n");
}
