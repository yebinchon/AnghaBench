
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;
struct rtc_time {int dummy; } ;


 int nov2dec_transitions (struct rtc_time*) ;
 int rtc_time64_to_tm (scalar_t__,struct rtc_time*) ;
 scalar_t__ rtc_tm_to_time64 (struct rtc_time*) ;

__attribute__((used)) static void rockchip_to_gregorian(struct rtc_time *tm)
{

 time64_t time = rtc_tm_to_time64(tm);
 rtc_time64_to_tm(time + nov2dec_transitions(tm) * 86400, tm);
}
