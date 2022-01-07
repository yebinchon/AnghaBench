
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 int booke_wdt_set (struct watchdog_device*) ;

__attribute__((used)) static int booke_wdt_set_timeout(struct watchdog_device *wdt_dev,
     unsigned int timeout)
{
 wdt_dev->timeout = timeout;
 booke_wdt_set(wdt_dev);

 return 0;
}
