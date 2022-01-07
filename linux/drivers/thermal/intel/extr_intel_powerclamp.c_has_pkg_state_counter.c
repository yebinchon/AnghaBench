
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pkg_cstate_info {scalar_t__ msr_index; } ;


 struct pkg_cstate_info* pkg_cstates ;
 int rdmsrl_safe (scalar_t__,int *) ;

__attribute__((used)) static bool has_pkg_state_counter(void)
{
 u64 val;
 struct pkg_cstate_info *info = pkg_cstates;


 while (info->msr_index) {
  if (!rdmsrl_safe(info->msr_index, &val))
   return 1;
  info++;
 }

 return 0;
}
