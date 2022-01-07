
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int hypervisor_set_time (int ) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;

__attribute__((used)) static int sun4v_set_time(struct device *dev, struct rtc_time *tm)
{
 return hypervisor_set_time(rtc_tm_to_time64(tm));
}
