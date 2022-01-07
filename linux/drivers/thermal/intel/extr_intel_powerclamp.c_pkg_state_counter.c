
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pkg_cstate_info {int skip; scalar_t__ msr_index; } ;


 struct pkg_cstate_info* pkg_cstates ;
 int rdmsrl_safe (scalar_t__,scalar_t__*) ;

__attribute__((used)) static u64 pkg_state_counter(void)
{
 u64 val;
 u64 count = 0;
 struct pkg_cstate_info *info = pkg_cstates;

 while (info->msr_index) {
  if (!info->skip) {
   if (!rdmsrl_safe(info->msr_index, &val))
    count += val;
   else
    info->skip = 1;
  }
  info++;
 }

 return count;
}
