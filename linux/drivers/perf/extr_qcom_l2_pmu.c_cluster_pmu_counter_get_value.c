
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;


 int IA_L2PMXEVCNTR ;
 int L2PMCCNTR ;
 int get_l2_indirect_reg (int ) ;
 scalar_t__ l2_cycle_ctr_idx ;
 int reg_idx (int ,scalar_t__) ;

__attribute__((used)) static inline u64 cluster_pmu_counter_get_value(u32 idx)
{
 u64 value;

 if (idx == l2_cycle_ctr_idx)
  value = get_l2_indirect_reg(L2PMCCNTR);
 else
  value = get_l2_indirect_reg(reg_idx(IA_L2PMXEVCNTR, idx));

 return value;
}
