
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 int ftwdt010_wdt_start (struct watchdog_device*) ;
 scalar_t__ watchdog_active (struct watchdog_device*) ;

__attribute__((used)) static int ftwdt010_wdt_set_timeout(struct watchdog_device *wdd,
      unsigned int timeout)
{
 wdd->timeout = timeout;
 if (watchdog_active(wdd))
  ftwdt010_wdt_start(wdd);

 return 0;
}
