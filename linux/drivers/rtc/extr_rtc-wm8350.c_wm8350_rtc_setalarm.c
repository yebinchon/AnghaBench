
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int time ;
struct wm8350 {int dummy; } ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; } ;
struct rtc_wkalrm {scalar_t__ enabled; struct rtc_time time; } ;
struct device {int dummy; } ;


 int WM8350_ALARM_SECONDS_MINUTES ;
 int WM8350_RTC_ALMDATE_MASK ;
 int WM8350_RTC_ALMDAY_MASK ;
 int WM8350_RTC_ALMDAY_SHIFT ;
 int WM8350_RTC_ALMHRS_MASK ;
 int WM8350_RTC_ALMMINS_MASK ;
 int WM8350_RTC_ALMMINS_SHIFT ;
 int WM8350_RTC_ALMMTH_MASK ;
 int WM8350_RTC_ALMMTH_SHIFT ;
 int WM8350_RTC_ALMSECS_MASK ;
 struct wm8350* dev_get_drvdata (struct device*) ;
 int memset (int*,int ,int) ;
 int wm8350_block_write (struct wm8350*,int ,int,int*) ;
 int wm8350_rtc_start_alarm (struct wm8350*) ;
 int wm8350_rtc_stop_alarm (struct wm8350*) ;

__attribute__((used)) static int wm8350_rtc_setalarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct wm8350 *wm8350 = dev_get_drvdata(dev);
 struct rtc_time *tm = &alrm->time;
 u16 time[3];
 int ret;

 memset(time, 0, sizeof(time));

 if (tm->tm_sec != -1)
  time[0] |= tm->tm_sec;
 else
  time[0] |= WM8350_RTC_ALMSECS_MASK;

 if (tm->tm_min != -1)
  time[0] |= tm->tm_min << WM8350_RTC_ALMMINS_SHIFT;
 else
  time[0] |= WM8350_RTC_ALMMINS_MASK;

 if (tm->tm_hour != -1)
  time[1] |= tm->tm_hour;
 else
  time[1] |= WM8350_RTC_ALMHRS_MASK;

 if (tm->tm_wday != -1)
  time[1] |= (tm->tm_wday + 1) << WM8350_RTC_ALMDAY_SHIFT;
 else
  time[1] |= WM8350_RTC_ALMDAY_MASK;

 if (tm->tm_mday != -1)
  time[2] |= tm->tm_mday;
 else
  time[2] |= WM8350_RTC_ALMDATE_MASK;

 if (tm->tm_mon != -1)
  time[2] |= (tm->tm_mon + 1) << WM8350_RTC_ALMMTH_SHIFT;
 else
  time[2] |= WM8350_RTC_ALMMTH_MASK;

 ret = wm8350_rtc_stop_alarm(wm8350);
 if (ret < 0)
  return ret;


 ret = wm8350_block_write(wm8350, WM8350_ALARM_SECONDS_MINUTES,
     3, time);
 if (ret < 0)
  return ret;

 if (alrm->enabled)
  ret = wm8350_rtc_start_alarm(wm8350);

 return ret;
}
