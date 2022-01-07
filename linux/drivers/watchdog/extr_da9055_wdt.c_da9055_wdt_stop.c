
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int da9055_wdt_set_timeout (struct watchdog_device*,int ) ;

__attribute__((used)) static int da9055_wdt_stop(struct watchdog_device *wdt_dev)
{
 return da9055_wdt_set_timeout(wdt_dev, 0);
}
