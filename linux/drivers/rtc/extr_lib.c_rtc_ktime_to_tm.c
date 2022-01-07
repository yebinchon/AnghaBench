
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_sec; scalar_t__ tv_nsec; } ;
struct rtc_time {int dummy; } ;
typedef int ktime_t ;


 struct timespec64 ktime_to_timespec64 (int ) ;
 int rtc_time64_to_tm (int ,struct rtc_time*) ;

struct rtc_time rtc_ktime_to_tm(ktime_t kt)
{
 struct timespec64 ts;
 struct rtc_time ret;

 ts = ktime_to_timespec64(kt);

 if (ts.tv_nsec)
  ts.tv_sec++;
 rtc_time64_to_tm(ts.tv_sec, &ret);
 return ret;
}
