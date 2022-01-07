
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;
struct meson_gxbb_wdt {scalar_t__ reg_base; } ;


 scalar_t__ GXBB_WDT_TCNT_REG ;
 unsigned long GXBB_WDT_TCNT_SETUP_MASK ;
 int meson_gxbb_wdt_ping (struct watchdog_device*) ;
 struct meson_gxbb_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int meson_gxbb_wdt_set_timeout(struct watchdog_device *wdt_dev,
          unsigned int timeout)
{
 struct meson_gxbb_wdt *data = watchdog_get_drvdata(wdt_dev);
 unsigned long tcnt = timeout * 1000;

 if (tcnt > GXBB_WDT_TCNT_SETUP_MASK)
  tcnt = GXBB_WDT_TCNT_SETUP_MASK;

 wdt_dev->timeout = timeout;

 meson_gxbb_wdt_ping(wdt_dev);

 writel(tcnt, data->reg_base + GXBB_WDT_TCNT_REG);

 return 0;
}
