
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;
struct at91wdt {scalar_t__ next_heartbeat; } ;


 int HZ ;
 scalar_t__ jiffies ;
 struct at91wdt* to_wdt (struct watchdog_device*) ;

__attribute__((used)) static int at91_wdt_start(struct watchdog_device *wdd)
{
 struct at91wdt *wdt = to_wdt(wdd);

 wdt->next_heartbeat = jiffies + wdd->timeout * HZ;
 return 0;
}
