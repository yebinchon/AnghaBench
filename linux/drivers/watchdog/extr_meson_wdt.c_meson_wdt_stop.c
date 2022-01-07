
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct watchdog_device {int dummy; } ;
struct meson_wdt_dev {scalar_t__ wdt_base; TYPE_1__* data; } ;
struct TYPE_2__ {int enable; } ;


 scalar_t__ MESON_WDT_TC ;
 int readl (scalar_t__) ;
 struct meson_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int meson_wdt_stop(struct watchdog_device *wdt_dev)
{
 struct meson_wdt_dev *meson_wdt = watchdog_get_drvdata(wdt_dev);
 u32 reg;

 reg = readl(meson_wdt->wdt_base + MESON_WDT_TC);
 reg &= ~meson_wdt->data->enable;
 writel(reg, meson_wdt->wdt_base + MESON_WDT_TC);

 return 0;
}
