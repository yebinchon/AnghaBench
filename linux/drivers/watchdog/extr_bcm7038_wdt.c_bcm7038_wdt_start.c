
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int bcm7038_wdt_ping (struct watchdog_device*) ;
 int bcm7038_wdt_set_timeout_reg (struct watchdog_device*) ;

__attribute__((used)) static int bcm7038_wdt_start(struct watchdog_device *wdog)
{
 bcm7038_wdt_set_timeout_reg(wdog);
 bcm7038_wdt_ping(wdog);

 return 0;
}
