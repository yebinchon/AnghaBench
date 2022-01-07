
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;


 int IA_L2PMXEVCNTR ;
 int L2PMCCNTR ;
 scalar_t__ l2_cycle_ctr_idx ;
 int reg_idx (int ,scalar_t__) ;
 int set_l2_indirect_reg (int ,int ) ;

__attribute__((used)) static inline void cluster_pmu_counter_set_value(u32 idx, u64 value)
{
 if (idx == l2_cycle_ctr_idx)
  set_l2_indirect_reg(L2PMCCNTR, value);
 else
  set_l2_indirect_reg(reg_idx(IA_L2PMXEVCNTR, idx), value);
}
