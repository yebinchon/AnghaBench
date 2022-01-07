
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 int txx9wdt_start (struct watchdog_device*) ;
 int txx9wdt_stop (struct watchdog_device*) ;

__attribute__((used)) static int txx9wdt_set_timeout(struct watchdog_device *wdt_dev,
          unsigned int new_timeout)
{
 wdt_dev->timeout = new_timeout;
 txx9wdt_stop(wdt_dev);
 txx9wdt_start(wdt_dev);
 return 0;
}
