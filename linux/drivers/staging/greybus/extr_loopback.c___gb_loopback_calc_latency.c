
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ NSEC_PER_DAY ;

__attribute__((used)) static u64 __gb_loopback_calc_latency(u64 t1, u64 t2)
{
 if (t2 > t1)
  return t2 - t1;
 else
  return NSEC_PER_DAY - t2 + t1;
}
