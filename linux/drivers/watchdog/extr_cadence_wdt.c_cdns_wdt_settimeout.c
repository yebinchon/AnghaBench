
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 int cdns_wdt_start (struct watchdog_device*) ;

__attribute__((used)) static int cdns_wdt_settimeout(struct watchdog_device *wdd,
          unsigned int new_time)
{
 wdd->timeout = new_time;

 return cdns_wdt_start(wdd);
}
