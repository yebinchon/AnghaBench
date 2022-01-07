
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dummy; } ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct device {int dummy; } ;


 int EIO ;
 int WM8350_RTC_DAY_SHIFT ;
 int WM8350_RTC_MINS_SHIFT ;
 int WM8350_RTC_MTH_SHIFT ;
 int WM8350_RTC_SECONDS_MINUTES ;
 int WM8350_RTC_SET ;
 int WM8350_RTC_STS ;
 int WM8350_RTC_TIME_CONTROL ;
 int WM8350_RTC_YHUNDREDS_SHIFT ;
 int WM8350_SET_TIME_RETRIES ;
 int dev_dbg (struct device*,char*,int,int,int,int) ;
 int dev_err (struct device*,char*) ;
 struct wm8350* dev_get_drvdata (struct device*) ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout_uninterruptible (int ) ;
 int wm8350_block_write (struct wm8350*,int ,int,int*) ;
 int wm8350_clear_bits (struct wm8350*,int ,int ) ;
 int wm8350_reg_read (struct wm8350*,int ) ;
 int wm8350_set_bits (struct wm8350*,int ,int ) ;

__attribute__((used)) static int wm8350_rtc_settime(struct device *dev, struct rtc_time *tm)
{
 struct wm8350 *wm8350 = dev_get_drvdata(dev);
 u16 time[4];
 u16 rtc_ctrl;
 int ret, retries = WM8350_SET_TIME_RETRIES;

 time[0] = tm->tm_sec;
 time[0] |= tm->tm_min << WM8350_RTC_MINS_SHIFT;
 time[1] = tm->tm_hour;
 time[1] |= (tm->tm_wday + 1) << WM8350_RTC_DAY_SHIFT;
 time[2] = tm->tm_mday;
 time[2] |= (tm->tm_mon + 1) << WM8350_RTC_MTH_SHIFT;
 time[3] = ((tm->tm_year + 1900) / 100) << WM8350_RTC_YHUNDREDS_SHIFT;
 time[3] |= (tm->tm_year + 1900) % 100;

 dev_dbg(dev, "Setting: %04x %04x %04x %04x\n",
  time[0], time[1], time[2], time[3]);


 ret = wm8350_set_bits(wm8350, WM8350_RTC_TIME_CONTROL, WM8350_RTC_SET);
 if (ret < 0)
  return ret;


 do {
  rtc_ctrl = wm8350_reg_read(wm8350, WM8350_RTC_TIME_CONTROL);
  schedule_timeout_uninterruptible(msecs_to_jiffies(1));
 } while (--retries && !(rtc_ctrl & WM8350_RTC_STS));

 if (!retries) {
  dev_err(dev, "timed out on set confirmation\n");
  return -EIO;
 }


 ret = wm8350_block_write(wm8350, WM8350_RTC_SECONDS_MINUTES, 4, time);
 if (ret < 0)
  return ret;


 ret = wm8350_clear_bits(wm8350, WM8350_RTC_TIME_CONTROL,
    WM8350_RTC_SET);
 return ret;
}
