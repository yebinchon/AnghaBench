
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_rtc {struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int EIO ;
 int EPERM ;
 int WM831X_RTC_CONTROL ;
 int WM831X_RTC_SYNC_BUSY ;
 int WM831X_RTC_TIME_1 ;
 int WM831X_RTC_TIME_2 ;
 int WM831X_SET_TIME_RETRIES ;
 int dev_err (struct device*,char*,...) ;
 struct wm831x_rtc* dev_get_drvdata (struct device*) ;
 int msleep (int) ;
 unsigned long rtc_tm_to_time64 (struct rtc_time*) ;
 int wm831x_reg_read (struct wm831x*,int ) ;
 int wm831x_reg_write (struct wm831x*,int ,unsigned long) ;
 int wm831x_rtc_readtime (struct device*,struct rtc_time*) ;

__attribute__((used)) static int wm831x_rtc_settime(struct device *dev, struct rtc_time *tm)
{
 struct wm831x_rtc *wm831x_rtc = dev_get_drvdata(dev);
 struct wm831x *wm831x = wm831x_rtc->wm831x;
 struct rtc_time new_tm;
 unsigned long time, new_time;
 int ret;
 int count = 0;

 time = rtc_tm_to_time64(tm);

 ret = wm831x_reg_write(wm831x, WM831X_RTC_TIME_1,
          (time >> 16) & 0xffff);
 if (ret < 0) {
  dev_err(dev, "Failed to write TIME_1: %d\n", ret);
  return ret;
 }

 ret = wm831x_reg_write(wm831x, WM831X_RTC_TIME_2, time & 0xffff);
 if (ret < 0) {
  dev_err(dev, "Failed to write TIME_2: %d\n", ret);
  return ret;
 }




 do {
  msleep(1);

  ret = wm831x_reg_read(wm831x, WM831X_RTC_CONTROL);
  if (ret < 0)
   ret = WM831X_RTC_SYNC_BUSY;
 } while (!(ret & WM831X_RTC_SYNC_BUSY) &&
   ++count < WM831X_SET_TIME_RETRIES);

 if (ret & WM831X_RTC_SYNC_BUSY) {
  dev_err(dev, "Timed out writing RTC update\n");
  return -EIO;
 }




 ret = wm831x_rtc_readtime(dev, &new_tm);
 if (ret < 0)
  return ret;

 new_time = rtc_tm_to_time64(&new_tm);


 if (new_time - time > 1) {
  dev_err(dev, "RTC update not permitted by hardware\n");
  return -EPERM;
 }

 return 0;
}
