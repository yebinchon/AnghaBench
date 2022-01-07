
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dummy; } ;
struct watchdog_device {int dummy; } ;


 int WM8350_SYSTEM_CONTROL_2 ;
 int WM8350_WDOG_MODE_MASK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wm8350* watchdog_get_drvdata (struct watchdog_device*) ;
 int wdt_mutex ;
 int wm8350_reg_lock (struct wm8350*) ;
 int wm8350_reg_read (struct wm8350*,int ) ;
 int wm8350_reg_unlock (struct wm8350*) ;
 int wm8350_reg_write (struct wm8350*,int ,int ) ;

__attribute__((used)) static int wm8350_wdt_stop(struct watchdog_device *wdt_dev)
{
 struct wm8350 *wm8350 = watchdog_get_drvdata(wdt_dev);
 int ret;
 u16 reg;

 mutex_lock(&wdt_mutex);
 wm8350_reg_unlock(wm8350);

 reg = wm8350_reg_read(wm8350, WM8350_SYSTEM_CONTROL_2);
 reg &= ~WM8350_WDOG_MODE_MASK;
 ret = wm8350_reg_write(wm8350, WM8350_SYSTEM_CONTROL_2, reg);

 wm8350_reg_lock(wm8350);
 mutex_unlock(&wdt_mutex);

 return ret;
}
