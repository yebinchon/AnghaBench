
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_DISABLE ;
 int del_timer_sync (int *) ;
 int pr_info (char*) ;
 int timer ;
 int wdt_change (int ) ;

__attribute__((used)) static void wdt_turnoff(void)
{

 del_timer_sync(&timer);
 wdt_change(WDT_DISABLE);
 pr_info("Watchdog timer is now disabled...\n");
}
