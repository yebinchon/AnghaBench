
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 scalar_t__ U300_WDOG_FR ;
 int U300_WDOG_FR_FEED_RESTART_TIMER ;
 scalar_t__ virtbase ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int coh901327_ping(struct watchdog_device *wdd)
{

 writew(U300_WDOG_FR_FEED_RESTART_TIMER,
        virtbase + U300_WDOG_FR);
 return 0;
}
