
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 int rave_sp_wdt_configure (struct watchdog_device*,int ) ;
 int watchdog_active (struct watchdog_device*) ;

__attribute__((used)) static int rave_sp_wdt_set_timeout(struct watchdog_device *wdd,
       unsigned int timeout)
{
 wdd->timeout = timeout;

 return rave_sp_wdt_configure(wdd, watchdog_active(wdd));
}
