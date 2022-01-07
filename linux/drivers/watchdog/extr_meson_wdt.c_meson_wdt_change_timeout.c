
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct watchdog_device {int dummy; } ;
struct meson_wdt_dev {scalar_t__ wdt_base; TYPE_1__* data; } ;
struct TYPE_2__ {int count_unit; int terminal_count_mask; } ;


 int MESON_SEC_TO_TC (unsigned int,int ) ;
 scalar_t__ MESON_WDT_TC ;
 int readl (scalar_t__) ;
 struct meson_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void meson_wdt_change_timeout(struct watchdog_device *wdt_dev,
         unsigned int timeout)
{
 struct meson_wdt_dev *meson_wdt = watchdog_get_drvdata(wdt_dev);
 u32 reg;

 reg = readl(meson_wdt->wdt_base + MESON_WDT_TC);
 reg &= ~meson_wdt->data->terminal_count_mask;
 reg |= MESON_SEC_TO_TC(timeout, meson_wdt->data->count_unit);
 writel(reg, meson_wdt->wdt_base + MESON_WDT_TC);
}
