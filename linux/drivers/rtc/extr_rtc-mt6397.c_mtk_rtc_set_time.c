
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct rtc_time {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct mt6397_rtc {int lock; scalar_t__ addr_base; int regmap; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_MIN_YEAR_OFFSET ;
 int RTC_OFFSET_COUNT ;
 size_t RTC_OFFSET_DOM ;
 size_t RTC_OFFSET_HOUR ;
 size_t RTC_OFFSET_MIN ;
 size_t RTC_OFFSET_MTH ;
 size_t RTC_OFFSET_SEC ;
 size_t RTC_OFFSET_YEAR ;
 scalar_t__ RTC_TC_SEC ;
 struct mt6397_rtc* dev_get_drvdata (struct device*) ;
 int mtk_rtc_write_trigger (struct mt6397_rtc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_write (int ,scalar_t__,scalar_t__*,int) ;

__attribute__((used)) static int mtk_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct mt6397_rtc *rtc = dev_get_drvdata(dev);
 int ret;
 u16 data[RTC_OFFSET_COUNT];

 tm->tm_year -= RTC_MIN_YEAR_OFFSET;
 tm->tm_mon++;

 data[RTC_OFFSET_SEC] = tm->tm_sec;
 data[RTC_OFFSET_MIN] = tm->tm_min;
 data[RTC_OFFSET_HOUR] = tm->tm_hour;
 data[RTC_OFFSET_DOM] = tm->tm_mday;
 data[RTC_OFFSET_MTH] = tm->tm_mon;
 data[RTC_OFFSET_YEAR] = tm->tm_year;

 mutex_lock(&rtc->lock);
 ret = regmap_bulk_write(rtc->regmap, rtc->addr_base + RTC_TC_SEC,
    data, RTC_OFFSET_COUNT);
 if (ret < 0)
  goto exit;


 ret = mtk_rtc_write_trigger(rtc);

exit:
 mutex_unlock(&rtc->lock);
 return ret;
}
