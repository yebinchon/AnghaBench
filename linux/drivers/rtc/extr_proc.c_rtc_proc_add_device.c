
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;


 scalar_t__ is_rtc_hctosys (struct rtc_device*) ;
 int proc_create_single_data (char*,int ,int *,int ,struct rtc_device*) ;
 int rtc_proc_show ;

void rtc_proc_add_device(struct rtc_device *rtc)
{
 if (is_rtc_hctosys(rtc))
  proc_create_single_data("driver/rtc", 0, ((void*)0), rtc_proc_show,
     rtc);
}
