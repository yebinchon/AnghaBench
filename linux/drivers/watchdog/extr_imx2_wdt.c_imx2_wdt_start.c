
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int status; int timeout; } ;
struct imx2_wdt_device {int dummy; } ;


 int WDOG_HW_RUNNING ;
 scalar_t__ imx2_wdt_is_running (struct imx2_wdt_device*) ;
 int imx2_wdt_ping (struct watchdog_device*) ;
 int imx2_wdt_set_timeout (struct watchdog_device*,int ) ;
 int imx2_wdt_setup (struct watchdog_device*) ;
 int set_bit (int ,int *) ;
 struct imx2_wdt_device* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int imx2_wdt_start(struct watchdog_device *wdog)
{
 struct imx2_wdt_device *wdev = watchdog_get_drvdata(wdog);

 if (imx2_wdt_is_running(wdev))
  imx2_wdt_set_timeout(wdog, wdog->timeout);
 else
  imx2_wdt_setup(wdog);

 set_bit(WDOG_HW_RUNNING, &wdog->status);

 return imx2_wdt_ping(wdog);
}
