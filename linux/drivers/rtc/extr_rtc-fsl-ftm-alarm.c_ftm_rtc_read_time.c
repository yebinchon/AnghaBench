
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_sec; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int ktime_get_real_ts64 (struct timespec64*) ;
 int rtc_time_to_tm (int ,struct rtc_time*) ;

__attribute__((used)) static int ftm_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct timespec64 ts64;

 ktime_get_real_ts64(&ts64);
 rtc_time_to_tm(ts64.tv_sec, tm);

 return 0;
}
