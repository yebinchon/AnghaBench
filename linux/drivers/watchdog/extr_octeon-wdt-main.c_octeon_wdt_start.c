
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int do_countdown ;
 int octeon_wdt_ping (struct watchdog_device*) ;

__attribute__((used)) static int octeon_wdt_start(struct watchdog_device *wdog)
{
 octeon_wdt_ping(wdog);
 do_countdown = 1;
 return 0;
}
