
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtc_time {int tm_hour; int tm_min; int tm_sec; } ;


 int CDNS_RTC_TIME_HR ;
 int CDNS_RTC_TIME_M ;
 int CDNS_RTC_TIME_S ;
 int FIELD_PREP (int ,int ) ;
 int bin2bcd (int ) ;

__attribute__((used)) static u32 cdns_rtc_time2reg(struct rtc_time *tm)
{
 return FIELD_PREP(CDNS_RTC_TIME_S, bin2bcd(tm->tm_sec))
      | FIELD_PREP(CDNS_RTC_TIME_M, bin2bcd(tm->tm_min))
      | FIELD_PREP(CDNS_RTC_TIME_HR, bin2bcd(tm->tm_hour));
}
