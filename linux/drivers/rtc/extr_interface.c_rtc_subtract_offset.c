
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;
struct rtc_time {int dummy; } ;
struct rtc_device {scalar_t__ offset_secs; scalar_t__ range_min; scalar_t__ range_max; } ;


 int rtc_time64_to_tm (scalar_t__,struct rtc_time*) ;
 scalar_t__ rtc_tm_to_time64 (struct rtc_time*) ;

__attribute__((used)) static void rtc_subtract_offset(struct rtc_device *rtc, struct rtc_time *tm)
{
 time64_t secs;

 if (!rtc->offset_secs)
  return;

 secs = rtc_tm_to_time64(tm);







 if (secs >= rtc->range_min && secs <= rtc->range_max)
  return;

 rtc_time64_to_tm(secs - rtc->offset_secs, tm);
}
