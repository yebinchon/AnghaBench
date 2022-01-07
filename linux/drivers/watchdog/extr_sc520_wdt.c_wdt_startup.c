
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int WDT_ENB ;
 int WDT_EXP_SEL_04 ;
 scalar_t__ WDT_INTERVAL ;
 int WDT_WRST_ENB ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ next_heartbeat ;
 int pr_info (char*) ;
 int timeout ;
 int timer ;
 int wdt_config (int) ;

__attribute__((used)) static int wdt_startup(void)
{
 next_heartbeat = jiffies + (timeout * HZ);


 mod_timer(&timer, jiffies + WDT_INTERVAL);


 wdt_config(WDT_ENB | WDT_WRST_ENB | WDT_EXP_SEL_04);

 pr_info("Watchdog timer is now enabled\n");
 return 0;
}
