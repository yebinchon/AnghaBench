
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ktime_t ;


 scalar_t__ arm_ccn_pmu_poll_period_us ;
 int ns_to_ktime (int) ;

__attribute__((used)) static ktime_t arm_ccn_pmu_timer_period(void)
{
 return ns_to_ktime((u64)arm_ccn_pmu_poll_period_us * 1000);
}
