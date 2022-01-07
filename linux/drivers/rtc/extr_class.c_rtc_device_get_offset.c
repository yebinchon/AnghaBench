
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int time64_t ;
struct TYPE_2__ {int parent; } ;
struct rtc_device {scalar_t__ range_min; scalar_t__ range_max; int start_secs; int set_start_time; int offset_secs; TYPE_1__ dev; } ;


 int device_property_read_u32 (int ,char*,int *) ;
 int mktime64 (int ,int,int,int ,int ,int ) ;

__attribute__((used)) static void rtc_device_get_offset(struct rtc_device *rtc)
{
 time64_t range_secs;
 u32 start_year;
 int ret;






 if (rtc->range_min == rtc->range_max)
  return;

 ret = device_property_read_u32(rtc->dev.parent, "start-year",
           &start_year);
 if (!ret) {
  rtc->start_secs = mktime64(start_year, 1, 1, 0, 0, 0);
  rtc->set_start_time = 1;
 }





 if (!rtc->set_start_time)
  return;

 range_secs = rtc->range_max - rtc->range_min + 1;
 if (rtc->start_secs > rtc->range_max ||
     rtc->start_secs + range_secs - 1 < rtc->range_min)
  rtc->offset_secs = rtc->start_secs - rtc->range_min;
 else if (rtc->start_secs > rtc->range_min)
  rtc->offset_secs = range_secs;
 else if (rtc->start_secs < rtc->range_min)
  rtc->offset_secs = -range_secs;
 else
  rtc->offset_secs = 0;
}
