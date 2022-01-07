
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;


 scalar_t__ is_rtc_hctosys (struct rtc_device*) ;
 int remove_proc_entry (char*,int *) ;

void rtc_proc_del_device(struct rtc_device *rtc)
{
 if (is_rtc_hctosys(rtc))
  remove_proc_entry("driver/rtc", ((void*)0));
}
