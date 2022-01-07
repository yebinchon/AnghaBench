
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct watchdog_device {int dummy; } ;
struct meson_wdt_dev {scalar_t__ wdt_base; TYPE_1__* data; } ;
struct TYPE_2__ {int enable; } ;


 int MESON_WDT_DC_RESET ;
 scalar_t__ MESON_WDT_TC ;
 int mdelay (int) ;
 struct meson_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int meson_wdt_restart(struct watchdog_device *wdt_dev,
        unsigned long action, void *data)
{
 struct meson_wdt_dev *meson_wdt = watchdog_get_drvdata(wdt_dev);
 u32 tc_reboot = MESON_WDT_DC_RESET;

 tc_reboot |= meson_wdt->data->enable;

 while (1) {
  writel(tc_reboot, meson_wdt->wdt_base + MESON_WDT_TC);
  mdelay(5);
 }

 return 0;
}
