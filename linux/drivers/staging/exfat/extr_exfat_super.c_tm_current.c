
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;
struct timestamp_t {int sec; int min; int hour; int day; int mon; int year; } ;


 scalar_t__ UNIX_SECS_1980 ;
 scalar_t__ UNIX_SECS_2108 ;
 scalar_t__ ktime_get_real_seconds () ;
 int time64_to_tm (scalar_t__,int ,struct tm*) ;

struct timestamp_t *tm_current(struct timestamp_t *tp)
{
 time64_t second = ktime_get_real_seconds();
 struct tm tm;

 time64_to_tm(second, 0, &tm);

 if (second < UNIX_SECS_1980) {
  tp->sec = 0;
  tp->min = 0;
  tp->hour = 0;
  tp->day = 1;
  tp->mon = 1;
  tp->year = 0;
  return tp;
 }

 if (second >= UNIX_SECS_2108) {
  tp->sec = 59;
  tp->min = 59;
  tp->hour = 23;
  tp->day = 31;
  tp->mon = 12;
  tp->year = 127;
  return tp;
 }

 tp->sec = tm.tm_sec;
 tp->min = tm.tm_min;
 tp->hour = tm.tm_hour;
 tp->day = tm.tm_mday;
 tp->mon = tm.tm_mon + 1;
 tp->year = tm.tm_year + 1900 - 1980;

 return tp;
}
