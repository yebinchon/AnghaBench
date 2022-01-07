
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 unsigned int ktime_get_seconds () ;
 unsigned int wdt_expires ;

__attribute__((used)) static unsigned int xen_wdt_get_timeleft(struct watchdog_device *wdd)
{
 return wdt_expires - ktime_get_seconds();
}
