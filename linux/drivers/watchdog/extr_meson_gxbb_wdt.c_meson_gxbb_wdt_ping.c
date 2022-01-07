
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct meson_gxbb_wdt {scalar_t__ reg_base; } ;


 scalar_t__ GXBB_WDT_RSET_REG ;
 struct meson_gxbb_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int meson_gxbb_wdt_ping(struct watchdog_device *wdt_dev)
{
 struct meson_gxbb_wdt *data = watchdog_get_drvdata(wdt_dev);

 writel(0, data->reg_base + GXBB_WDT_RSET_REG);

 return 0;
}
