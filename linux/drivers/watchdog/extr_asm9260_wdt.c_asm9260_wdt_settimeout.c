
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 int asm9260_wdt_updatetimeout (struct watchdog_device*) ;

__attribute__((used)) static int asm9260_wdt_settimeout(struct watchdog_device *wdd, unsigned int to)
{
 wdd->timeout = to;
 asm9260_wdt_updatetimeout(wdd);

 return 0;
}
