
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ktime_t ;


 int __gb_loopback_calc_latency (int ,int ) ;
 int ktime_to_ns (int ) ;

__attribute__((used)) static u64 gb_loopback_calc_latency(ktime_t ts, ktime_t te)
{
 return __gb_loopback_calc_latency(ktime_to_ns(ts), ktime_to_ns(te));
}
