
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int del_timer (int *) ;
 int inb_p (int ) ;
 int pr_info (char*) ;
 int timer ;
 int wdt_stop ;

__attribute__((used)) static void wdt_turnoff(void)
{

 del_timer(&timer);
 inb_p(wdt_stop);
 pr_info("Watchdog timer is now disabled...\n");
}
