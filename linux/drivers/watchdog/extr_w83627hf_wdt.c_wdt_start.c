
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;


 int wdt_set_time (int ) ;

__attribute__((used)) static int wdt_start(struct watchdog_device *wdog)
{
 return wdt_set_time(wdog->timeout);
}
