
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct rtc_time {int tm_year; int tm_mday; int tm_mon; } ;


 int EINVAL ;
 scalar_t__ rtc_year_days (int,int,int) ;

__attribute__((used)) static int convert2days(u16 *days, struct rtc_time *tm)
{
 int i;
 *days = 0;


 if (tm->tm_year < 100 || tm->tm_year > 199)
  return -EINVAL;

 for (i = 2000; i < 1900 + tm->tm_year; i++)
  *days += rtc_year_days(1, 12, i);

 *days += rtc_year_days(tm->tm_mday, tm->tm_mon, 1900 + tm->tm_year);

 return 0;
}
