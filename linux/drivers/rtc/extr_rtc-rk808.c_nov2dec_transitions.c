
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct rtc_time {int tm_year; int tm_mon; } ;



__attribute__((used)) static time64_t nov2dec_transitions(struct rtc_time *tm)
{
 return (tm->tm_year + 1900) - 2016 + (tm->tm_mon + 1 > 11 ? 1 : 0);
}
