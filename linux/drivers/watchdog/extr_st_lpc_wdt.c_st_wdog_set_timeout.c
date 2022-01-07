
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;
struct st_wdog {int dummy; } ;


 int st_wdog_load_timer (struct st_wdog*,unsigned int) ;
 struct st_wdog* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int st_wdog_set_timeout(struct watchdog_device *wdd,
          unsigned int timeout)
{
 struct st_wdog *st_wdog = watchdog_get_drvdata(wdd);

 wdd->timeout = timeout;
 st_wdog_load_timer(st_wdog, timeout);

 return 0;
}
