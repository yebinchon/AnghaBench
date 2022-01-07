
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int dummy; } ;
struct rtd119x_watchdog_device {scalar_t__ base; } ;


 scalar_t__ RTD119X_TCWCR ;
 int RTD119X_TCWCR_WDEN_DISABLED ;
 int RTD119X_TCWCR_WDEN_MASK ;
 int readl_relaxed (scalar_t__) ;
 struct rtd119x_watchdog_device* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int rtd119x_wdt_stop(struct watchdog_device *wdev)
{
 struct rtd119x_watchdog_device *data = watchdog_get_drvdata(wdev);
 u32 val;

 val = readl_relaxed(data->base + RTD119X_TCWCR);
 val &= ~RTD119X_TCWCR_WDEN_MASK;
 val |= RTD119X_TCWCR_WDEN_DISABLED;
 writel(val, data->base + RTD119X_TCWCR);

 return 0;
}
