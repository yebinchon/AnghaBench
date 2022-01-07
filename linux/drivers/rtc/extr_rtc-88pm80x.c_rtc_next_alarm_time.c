
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;


 int rtc_time64_to_tm (unsigned long,struct rtc_time*) ;
 unsigned long rtc_tm_to_time64 (struct rtc_time*) ;

__attribute__((used)) static void rtc_next_alarm_time(struct rtc_time *next, struct rtc_time *now,
    struct rtc_time *alrm)
{
 unsigned long next_time;
 unsigned long now_time;

 next->tm_year = now->tm_year;
 next->tm_mon = now->tm_mon;
 next->tm_mday = now->tm_mday;
 next->tm_hour = alrm->tm_hour;
 next->tm_min = alrm->tm_min;
 next->tm_sec = alrm->tm_sec;

 now_time = rtc_tm_to_time64(now);
 next_time = rtc_tm_to_time64(next);

 if (next_time < now_time) {

  next_time += 60 * 60 * 24;
  rtc_time64_to_tm(next_time, next);
 }
}
