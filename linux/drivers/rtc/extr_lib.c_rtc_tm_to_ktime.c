
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
typedef int ktime_t ;


 int ktime_set (int ,int ) ;
 int rtc_tm_to_time64 (struct rtc_time*) ;

ktime_t rtc_tm_to_ktime(struct rtc_time tm)
{
 return ktime_set(rtc_tm_to_time64(&tm), 0);
}
