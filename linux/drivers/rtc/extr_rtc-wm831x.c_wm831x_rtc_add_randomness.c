
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm831x {int dev; } ;
typedef int reg ;


 int WM831X_RTC_WRITE_COUNTER ;
 int add_device_randomness (int*,int) ;
 int dev_warn (int ,char*,int) ;
 int wm831x_reg_read (struct wm831x*,int ) ;

__attribute__((used)) static void wm831x_rtc_add_randomness(struct wm831x *wm831x)
{
 int ret;
 u16 reg;






 ret = wm831x_reg_read(wm831x, WM831X_RTC_WRITE_COUNTER);
 if (ret >= 0) {
  reg = ret;
  add_device_randomness(&reg, sizeof(reg));
 } else {
  dev_warn(wm831x->dev, "Failed to read RTC write counter: %d\n",
    ret);
 }
}
