
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8350 {int dummy; } ;


 int ETIMEDOUT ;
 int WM8350_RTC_ALMSET ;
 int WM8350_RTC_ALMSTS ;
 int WM8350_RTC_TIME_CONTROL ;
 int WM8350_SET_ALM_RETRIES ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout_uninterruptible (int ) ;
 int wm8350_reg_read (struct wm8350*,int ) ;
 int wm8350_set_bits (struct wm8350*,int ,int ) ;

__attribute__((used)) static int wm8350_rtc_stop_alarm(struct wm8350 *wm8350)
{
 int retries = WM8350_SET_ALM_RETRIES;
 u16 rtc_ctrl;
 int ret;


 ret = wm8350_set_bits(wm8350, WM8350_RTC_TIME_CONTROL,
         WM8350_RTC_ALMSET);
 if (ret < 0)
  return ret;


 do {
  rtc_ctrl = wm8350_reg_read(wm8350, WM8350_RTC_TIME_CONTROL);
  schedule_timeout_uninterruptible(msecs_to_jiffies(1));
 } while (retries-- && !(rtc_ctrl & WM8350_RTC_ALMSTS));

 if (!(rtc_ctrl & WM8350_RTC_ALMSTS))
  return -ETIMEDOUT;

 return 0;
}
