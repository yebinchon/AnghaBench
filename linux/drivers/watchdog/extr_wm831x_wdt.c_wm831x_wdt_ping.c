
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm831x_wdt_drvdata {int update_state; int lock; scalar_t__ update_gpio; struct wm831x* wm831x; } ;
struct wm831x {int dev; } ;
struct watchdog_device {int dummy; } ;


 int EINVAL ;
 int WM831X_WATCHDOG ;
 int WM831X_WDOG_RESET ;
 int WM831X_WDOG_RST_SRC ;
 int dev_err (int ,char*,...) ;
 int gpio_set_value_cansleep (scalar_t__,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wm831x_wdt_drvdata* watchdog_get_drvdata (struct watchdog_device*) ;
 int wm831x_reg_lock (struct wm831x*) ;
 int wm831x_reg_read (struct wm831x*,int ) ;
 int wm831x_reg_unlock (struct wm831x*) ;
 int wm831x_reg_write (struct wm831x*,int ,int) ;

__attribute__((used)) static int wm831x_wdt_ping(struct watchdog_device *wdt_dev)
{
 struct wm831x_wdt_drvdata *driver_data = watchdog_get_drvdata(wdt_dev);
 struct wm831x *wm831x = driver_data->wm831x;
 int ret;
 u16 reg;

 mutex_lock(&driver_data->lock);

 if (driver_data->update_gpio) {
  gpio_set_value_cansleep(driver_data->update_gpio,
     driver_data->update_state);
  driver_data->update_state = !driver_data->update_state;
  ret = 0;
  goto out;
 }

 reg = wm831x_reg_read(wm831x, WM831X_WATCHDOG);

 if (!(reg & WM831X_WDOG_RST_SRC)) {
  dev_err(wm831x->dev, "Hardware watchdog update unsupported\n");
  ret = -EINVAL;
  goto out;
 }

 reg |= WM831X_WDOG_RESET;

 ret = wm831x_reg_unlock(wm831x);
 if (ret == 0) {
  ret = wm831x_reg_write(wm831x, WM831X_WATCHDOG, reg);
  wm831x_reg_lock(wm831x);
 } else {
  dev_err(wm831x->dev, "Failed to unlock security key: %d\n",
   ret);
 }

out:
 mutex_unlock(&driver_data->lock);

 return ret;
}
