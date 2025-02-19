
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtc_time {int tm_year; int tm_mon; int tm_mday; } ;


 int rtc_month_days (int,int) ;
 int rtc_year_days (int,int,int) ;

__attribute__((used)) static int convertfromdays(u16 days, struct rtc_time *tm)
{
 int tmp_days, year, mon;

 for (year = 2000;; year++) {
  tmp_days = rtc_year_days(1, 12, year);
  if (days >= tmp_days)
   days -= tmp_days;
  else {
   for (mon = 0;; mon++) {
    tmp_days = rtc_month_days(mon, year);
    if (days >= tmp_days) {
     days -= tmp_days;
    } else {
     tm->tm_year = year - 1900;
     tm->tm_mon = mon;
     tm->tm_mday = days + 1;
     break;
    }
   }
   break;
  }
 }
 return 0;
}
