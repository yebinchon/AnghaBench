
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct rtc_time {int tm_sec; int tm_wday; int tm_mon; int tm_year; } ;
struct mt6397_rtc {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_MIN_YEAR_OFFSET ;
 int __mtk_rtc_read_time (struct mt6397_rtc*,struct rtc_time*,int*) ;
 struct mt6397_rtc* dev_get_drvdata (struct device*) ;
 int div_s64 (int ,int) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;

__attribute__((used)) static int mtk_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 time64_t time;
 struct mt6397_rtc *rtc = dev_get_drvdata(dev);
 int days, sec, ret;

 do {
  ret = __mtk_rtc_read_time(rtc, tm, &sec);
  if (ret < 0)
   goto exit;
 } while (sec < tm->tm_sec);





 tm->tm_year += RTC_MIN_YEAR_OFFSET;


 tm->tm_mon--;
 time = rtc_tm_to_time64(tm);




 days = div_s64(time, 86400);
 tm->tm_wday = (days + 4) % 7;

exit:
 return ret;
}
