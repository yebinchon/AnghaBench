
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_wdt_drvdata {int lock; struct wm831x* wm831x; } ;
struct wm831x {int dev; } ;
struct watchdog_device {int dummy; } ;


 int WM831X_WATCHDOG ;
 int WM831X_WDOG_ENA ;
 int dev_err (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wm831x_wdt_drvdata* watchdog_get_drvdata (struct watchdog_device*) ;
 int wm831x_reg_lock (struct wm831x*) ;
 int wm831x_reg_unlock (struct wm831x*) ;
 int wm831x_set_bits (struct wm831x*,int ,int ,int ) ;

__attribute__((used)) static int wm831x_wdt_stop(struct watchdog_device *wdt_dev)
{
 struct wm831x_wdt_drvdata *driver_data = watchdog_get_drvdata(wdt_dev);
 struct wm831x *wm831x = driver_data->wm831x;
 int ret;

 mutex_lock(&driver_data->lock);

 ret = wm831x_reg_unlock(wm831x);
 if (ret == 0) {
  ret = wm831x_set_bits(wm831x, WM831X_WATCHDOG,
          WM831X_WDOG_ENA, 0);
  wm831x_reg_lock(wm831x);
 } else {
  dev_err(wm831x->dev, "Failed to unlock security key: %d\n",
   ret);
 }

 mutex_unlock(&driver_data->lock);

 return ret;
}
