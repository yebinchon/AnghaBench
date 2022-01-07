
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct rtd119x_watchdog_device {scalar_t__ base; } ;


 scalar_t__ RTD119X_TCWTR ;
 int RTD119X_TCWTR_WDCLR ;
 int rtd119x_wdt_start (struct watchdog_device*) ;
 struct rtd119x_watchdog_device* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int rtd119x_wdt_ping(struct watchdog_device *wdev)
{
 struct rtd119x_watchdog_device *data = watchdog_get_drvdata(wdev);

 writel_relaxed(RTD119X_TCWTR_WDCLR, data->base + RTD119X_TCWTR);

 return rtd119x_wdt_start(wdev);
}
