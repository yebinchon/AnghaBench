
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct meson_wdt_dev {scalar_t__ wdt_base; } ;


 scalar_t__ MESON_WDT_RESET ;
 struct meson_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int meson_wdt_ping(struct watchdog_device *wdt_dev)
{
 struct meson_wdt_dev *meson_wdt = watchdog_get_drvdata(wdt_dev);

 writel(0, meson_wdt->wdt_base + MESON_WDT_RESET);

 return 0;
}
