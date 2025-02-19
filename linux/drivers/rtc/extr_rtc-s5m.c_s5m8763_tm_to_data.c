
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;


 size_t RTC_DATE ;
 size_t RTC_HOUR ;
 size_t RTC_MIN ;
 size_t RTC_MONTH ;
 size_t RTC_SEC ;
 size_t RTC_WEEKDAY ;
 size_t RTC_YEAR1 ;
 size_t RTC_YEAR2 ;
 int bin2bcd (int) ;

__attribute__((used)) static void s5m8763_tm_to_data(struct rtc_time *tm, u8 *data)
{
 data[RTC_SEC] = bin2bcd(tm->tm_sec);
 data[RTC_MIN] = bin2bcd(tm->tm_min);
 data[RTC_HOUR] = bin2bcd(tm->tm_hour);
 data[RTC_WEEKDAY] = tm->tm_wday;
 data[RTC_DATE] = bin2bcd(tm->tm_mday);
 data[RTC_MONTH] = bin2bcd(tm->tm_mon);
 data[RTC_YEAR1] = bin2bcd(tm->tm_year % 100);
 data[RTC_YEAR2] = bin2bcd((tm->tm_year + 1900) / 100);
}
