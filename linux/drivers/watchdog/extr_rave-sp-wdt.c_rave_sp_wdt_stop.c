
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int rave_sp_wdt_configure (struct watchdog_device*,int) ;

__attribute__((used)) static int rave_sp_wdt_stop(struct watchdog_device *wdd)
{
 return rave_sp_wdt_configure(wdd, 0);
}
