
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 scalar_t__ do_countdown ;
 int octeon_wdt_ping (struct watchdog_device*) ;

__attribute__((used)) static int octeon_wdt_stop(struct watchdog_device *wdog)
{
 do_countdown = 0;
 octeon_wdt_ping(wdog);
 return 0;
}
