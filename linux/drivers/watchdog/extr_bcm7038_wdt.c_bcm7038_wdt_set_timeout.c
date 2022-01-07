
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 int bcm7038_wdt_start (struct watchdog_device*) ;
 int bcm7038_wdt_stop (struct watchdog_device*) ;

__attribute__((used)) static int bcm7038_wdt_set_timeout(struct watchdog_device *wdog,
       unsigned int t)
{

 bcm7038_wdt_stop(wdog);
 wdog->timeout = t;
 bcm7038_wdt_start(wdog);

 return 0;
}
