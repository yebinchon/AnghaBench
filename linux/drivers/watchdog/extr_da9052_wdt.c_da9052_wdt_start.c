
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;


 int da9052_wdt_set_timeout (struct watchdog_device*,int ) ;

__attribute__((used)) static int da9052_wdt_start(struct watchdog_device *wdt_dev)
{
 return da9052_wdt_set_timeout(wdt_dev, wdt_dev->timeout);
}
