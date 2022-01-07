
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;



__attribute__((used)) static int bcm_kona_wdt_set_timeout(struct watchdog_device *wdog,
 unsigned int t)
{
 wdog->timeout = t;
 return 0;
}
