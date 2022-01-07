
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ ps3_os_area_get_rtc_diff () ;
 scalar_t__ read_rtc () ;
 int rtc_time64_to_tm (scalar_t__,struct rtc_time*) ;

__attribute__((used)) static int ps3_get_time(struct device *dev, struct rtc_time *tm)
{
 rtc_time64_to_tm(read_rtc() + ps3_os_area_get_rtc_diff(), tm);
 return 0;
}
