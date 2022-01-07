
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time64_t ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;


 int mktime64 (unsigned int,scalar_t__,int ,int ,int ,int ) ;

time64_t rtc_tm_to_time64(struct rtc_time *tm)
{
 return mktime64(((unsigned int)tm->tm_year + 1900), tm->tm_mon + 1,
   tm->tm_mday, tm->tm_hour, tm->tm_min, tm->tm_sec);
}
