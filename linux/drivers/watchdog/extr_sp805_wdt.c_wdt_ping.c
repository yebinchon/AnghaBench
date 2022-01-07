
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int wdt_config (struct watchdog_device*,int) ;

__attribute__((used)) static int wdt_ping(struct watchdog_device *wdd)
{
 return wdt_config(wdd, 1);
}
