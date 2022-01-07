
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 int wdt_start (struct watchdog_device*) ;

__attribute__((used)) static int wdt_set_timeout(struct watchdog_device *wdd, unsigned new_timeout)
{
 wdd->timeout = new_timeout;
 return wdt_start(wdd);
}
