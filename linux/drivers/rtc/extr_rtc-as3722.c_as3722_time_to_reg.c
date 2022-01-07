
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;


 int AS3722_RTC_START_YEAR ;
 int bin2bcd (int) ;

__attribute__((used)) static void as3722_time_to_reg(u8 *rbuff, struct rtc_time *tm)
{
 rbuff[0] = bin2bcd(tm->tm_sec);
 rbuff[1] = bin2bcd(tm->tm_min);
 rbuff[2] = bin2bcd(tm->tm_hour);
 rbuff[3] = bin2bcd(tm->tm_mday);
 rbuff[4] = bin2bcd(tm->tm_mon + 1);
 rbuff[5] = bin2bcd(tm->tm_year - (AS3722_RTC_START_YEAR - 1900));
}
