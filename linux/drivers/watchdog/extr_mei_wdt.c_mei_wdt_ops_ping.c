
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct mei_wdt {scalar_t__ state; int response; scalar_t__ resp_required; } ;


 scalar_t__ MEI_WDT_RUNNING ;
 scalar_t__ MEI_WDT_START ;
 int init_completion (int *) ;
 int mei_wdt_ping (struct mei_wdt*) ;
 int wait_for_completion_killable (int *) ;
 struct mei_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int mei_wdt_ops_ping(struct watchdog_device *wdd)
{
 struct mei_wdt *wdt = watchdog_get_drvdata(wdd);
 int ret;

 if (wdt->state != MEI_WDT_START && wdt->state != MEI_WDT_RUNNING)
  return 0;

 if (wdt->resp_required)
  init_completion(&wdt->response);

 wdt->state = MEI_WDT_RUNNING;
 ret = mei_wdt_ping(wdt);
 if (ret)
  return ret;

 if (wdt->resp_required)
  ret = wait_for_completion_killable(&wdt->response);

 return ret;
}
