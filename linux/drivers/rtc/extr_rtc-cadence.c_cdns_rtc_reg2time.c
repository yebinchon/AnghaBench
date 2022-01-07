
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtc_time {void* tm_hour; void* tm_min; void* tm_sec; } ;


 int CDNS_RTC_TIME_HR ;
 int CDNS_RTC_TIME_M ;
 int CDNS_RTC_TIME_S ;
 int FIELD_GET (int ,int ) ;
 void* bcd2bin (int ) ;

__attribute__((used)) static void cdns_rtc_reg2time(u32 reg, struct rtc_time *tm)
{
 tm->tm_sec = bcd2bin(FIELD_GET(CDNS_RTC_TIME_S, reg));
 tm->tm_min = bcd2bin(FIELD_GET(CDNS_RTC_TIME_M, reg));
 tm->tm_hour = bcd2bin(FIELD_GET(CDNS_RTC_TIME_HR, reg));
}
