
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {scalar_t__ timeout; } ;


 int twl4030_wdt_write (scalar_t__) ;

__attribute__((used)) static int twl4030_wdt_start(struct watchdog_device *wdt)
{
 return twl4030_wdt_write(wdt->timeout + 1);
}
