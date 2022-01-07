
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 int at91_wdt_start (struct watchdog_device*) ;

__attribute__((used)) static int at91_wdt_set_timeout(struct watchdog_device *wdd, unsigned int new_timeout)
{
 wdd->timeout = new_timeout;
 return at91_wdt_start(wdd);
}
