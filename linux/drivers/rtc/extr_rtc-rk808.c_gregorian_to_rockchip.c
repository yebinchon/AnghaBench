
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct rtc_time {int tm_mon; int tm_mday; } ;


 int nov2dec_transitions (struct rtc_time*) ;
 int rtc_time64_to_tm (int,struct rtc_time*) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;

__attribute__((used)) static void gregorian_to_rockchip(struct rtc_time *tm)
{
 time64_t extra_days = nov2dec_transitions(tm);
 time64_t time = rtc_tm_to_time64(tm);
 rtc_time64_to_tm(time - extra_days * 86400, tm);


 if (nov2dec_transitions(tm) < extra_days) {
  if (tm->tm_mon + 1 == 11)
   tm->tm_mday++;
  else
   rtc_time64_to_tm(time - (extra_days - 1) * 86400, tm);
 }
}
