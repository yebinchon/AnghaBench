
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;


 int wdt_update_timeout (int ) ;

__attribute__((used)) static int wdt_start(struct watchdog_device *wdd)
{
 return wdt_update_timeout(wdd->timeout);
}
