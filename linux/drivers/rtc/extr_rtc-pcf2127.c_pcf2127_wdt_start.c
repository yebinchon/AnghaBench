
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int pcf2127_wdt_ping (struct watchdog_device*) ;

__attribute__((used)) static int pcf2127_wdt_start(struct watchdog_device *wdd)
{
 return pcf2127_wdt_ping(wdd);
}
