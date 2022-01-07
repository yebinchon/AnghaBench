
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_year; scalar_t__ tm_isdst; void* tm_mon; void* tm_mday; int tm_yday; void* tm_wday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct ds1685_priv {int (* read ) (struct ds1685_priv*,int ) ;} ;
struct device {int dummy; } ;


 int RTC_CENTURY ;
 int RTC_CENTURY_MASK ;
 int RTC_CTRL_B ;
 int RTC_HRS ;
 int RTC_HRS_24_BCD_MASK ;
 int RTC_HRS_24_BIN_MASK ;
 int RTC_MDAY ;
 int RTC_MDAY_BCD_MASK ;
 int RTC_MDAY_BIN_MASK ;
 int RTC_MINS ;
 int RTC_MINS_BCD_MASK ;
 int RTC_MINS_BIN_MASK ;
 int RTC_MONTH ;
 int RTC_MONTH_BCD_MASK ;
 int RTC_MONTH_BIN_MASK ;
 int RTC_SECS ;
 int RTC_SECS_BCD_MASK ;
 int RTC_SECS_BIN_MASK ;
 int RTC_WDAY ;
 int RTC_WDAY_MASK ;
 int RTC_YEAR ;
 int RTC_YEAR_BCD_MASK ;
 int RTC_YEAR_BIN_MASK ;
 struct ds1685_priv* dev_get_drvdata (struct device*) ;
 void* ds1685_rtc_bcd2bin (struct ds1685_priv*,int,int ,int ) ;
 int ds1685_rtc_begin_data_access (struct ds1685_priv*) ;
 int ds1685_rtc_end_data_access (struct ds1685_priv*) ;
 int rtc_year_days (void*,void*,int) ;
 int stub1 (struct ds1685_priv*,int ) ;
 int stub2 (struct ds1685_priv*,int ) ;
 int stub3 (struct ds1685_priv*,int ) ;
 int stub4 (struct ds1685_priv*,int ) ;
 int stub5 (struct ds1685_priv*,int ) ;
 int stub6 (struct ds1685_priv*,int ) ;
 int stub7 (struct ds1685_priv*,int ) ;
 int stub8 (struct ds1685_priv*,int ) ;
 int stub9 (struct ds1685_priv*,int ) ;

__attribute__((used)) static int
ds1685_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct ds1685_priv *rtc = dev_get_drvdata(dev);
 u8 ctrlb, century;
 u8 seconds, minutes, hours, wday, mday, month, years;


 ds1685_rtc_begin_data_access(rtc);
 seconds = rtc->read(rtc, RTC_SECS);
 minutes = rtc->read(rtc, RTC_MINS);
 hours = rtc->read(rtc, RTC_HRS);
 wday = rtc->read(rtc, RTC_WDAY);
 mday = rtc->read(rtc, RTC_MDAY);
 month = rtc->read(rtc, RTC_MONTH);
 years = rtc->read(rtc, RTC_YEAR);
 century = rtc->read(rtc, RTC_CENTURY);
 ctrlb = rtc->read(rtc, RTC_CTRL_B);
 ds1685_rtc_end_data_access(rtc);


 years = ds1685_rtc_bcd2bin(rtc, years, RTC_YEAR_BCD_MASK,
       RTC_YEAR_BIN_MASK);
 century = ds1685_rtc_bcd2bin(rtc, century, RTC_CENTURY_MASK,
       RTC_CENTURY_MASK);
 tm->tm_sec = ds1685_rtc_bcd2bin(rtc, seconds, RTC_SECS_BCD_MASK,
       RTC_SECS_BIN_MASK);
 tm->tm_min = ds1685_rtc_bcd2bin(rtc, minutes, RTC_MINS_BCD_MASK,
       RTC_MINS_BIN_MASK);
 tm->tm_hour = ds1685_rtc_bcd2bin(rtc, hours, RTC_HRS_24_BCD_MASK,
       RTC_HRS_24_BIN_MASK);
 tm->tm_wday = (ds1685_rtc_bcd2bin(rtc, wday, RTC_WDAY_MASK,
        RTC_WDAY_MASK) - 1);
 tm->tm_mday = ds1685_rtc_bcd2bin(rtc, mday, RTC_MDAY_BCD_MASK,
       RTC_MDAY_BIN_MASK);
 tm->tm_mon = (ds1685_rtc_bcd2bin(rtc, month, RTC_MONTH_BCD_MASK,
        RTC_MONTH_BIN_MASK) - 1);
 tm->tm_year = ((years + (century * 100)) - 1900);
 tm->tm_yday = rtc_year_days(tm->tm_mday, tm->tm_mon, tm->tm_year);
 tm->tm_isdst = 0;

 return 0;
}
