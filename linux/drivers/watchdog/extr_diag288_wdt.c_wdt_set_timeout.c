
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 int wdt_ping (struct watchdog_device*) ;

__attribute__((used)) static int wdt_set_timeout(struct watchdog_device * dev, unsigned int new_to)
{
 dev->timeout = new_to;
 return wdt_ping(dev);
}
