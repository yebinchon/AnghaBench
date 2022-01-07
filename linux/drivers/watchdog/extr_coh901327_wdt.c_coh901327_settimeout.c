
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 scalar_t__ U300_WDOG_FR ;
 unsigned int U300_WDOG_FR_FEED_RESTART_TIMER ;
 scalar_t__ U300_WDOG_TR ;
 scalar_t__ virtbase ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static int coh901327_settimeout(struct watchdog_device *wdt_dev,
    unsigned int time)
{
 wdt_dev->timeout = time;

 writew(time * 100, virtbase + U300_WDOG_TR);

 writew(U300_WDOG_FR_FEED_RESTART_TIMER,
        virtbase + U300_WDOG_FR);
 return 0;
}
