
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int ZIIRAVE_STATE_ON ;
 int ziirave_wdt_set_state (struct watchdog_device*,int ) ;

__attribute__((used)) static int ziirave_wdt_start(struct watchdog_device *wdd)
{
 return ziirave_wdt_set_state(wdd, ZIIRAVE_STATE_ON);
}
