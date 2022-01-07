
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct meson_gxbb_wdt {scalar_t__ reg_base; } ;


 int GXBB_WDT_CTRL_EN ;
 scalar_t__ GXBB_WDT_CTRL_REG ;
 int readl (scalar_t__) ;
 struct meson_gxbb_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int meson_gxbb_wdt_start(struct watchdog_device *wdt_dev)
{
 struct meson_gxbb_wdt *data = watchdog_get_drvdata(wdt_dev);

 writel(readl(data->reg_base + GXBB_WDT_CTRL_REG) | GXBB_WDT_CTRL_EN,
        data->reg_base + GXBB_WDT_CTRL_REG);

 return 0;
}
