
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time64_t ;
struct rtc_time {int dummy; } ;
struct rtc_device {scalar_t__ range_min; scalar_t__ range_max; scalar_t__ start_secs; scalar_t__ set_start_time; } ;


 int ERANGE ;
 scalar_t__ rtc_tm_to_time64 (struct rtc_time*) ;

__attribute__((used)) static int rtc_valid_range(struct rtc_device *rtc, struct rtc_time *tm)
{
 if (rtc->range_min != rtc->range_max) {
  time64_t time = rtc_tm_to_time64(tm);
  time64_t range_min = rtc->set_start_time ? rtc->start_secs :
   rtc->range_min;
  time64_t range_max = rtc->set_start_time ?
   (rtc->start_secs + rtc->range_max - rtc->range_min) :
   rtc->range_max;

  if (time < range_min || time > range_max)
   return -ERANGE;
 }

 return 0;
}
