
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rapl_package {int time_unit; } ;


 int div64_u64 (int,int) ;

__attribute__((used)) static u64 rapl_compute_time_window_atom(struct rapl_package *rp, u64 value,
      bool to_raw)
{




 if (!to_raw)
  return (value) ? value *= rp->time_unit : rp->time_unit;

 value = div64_u64(value, rp->time_unit);

 return value;
}
