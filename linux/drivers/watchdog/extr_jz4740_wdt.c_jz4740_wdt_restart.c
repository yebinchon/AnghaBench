
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {scalar_t__ timeout; } ;


 int jz4740_wdt_start (struct watchdog_device*) ;

__attribute__((used)) static int jz4740_wdt_restart(struct watchdog_device *wdt_dev,
         unsigned long action, void *data)
{
 wdt_dev->timeout = 0;
 jz4740_wdt_start(wdt_dev);
 return 0;
}
