
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int L2PMINTENSET ;
 int idx_to_reg_bit (int ) ;
 int set_l2_indirect_reg (int ,int ) ;

__attribute__((used)) static inline void cluster_pmu_counter_enable_interrupt(u32 idx)
{
 set_l2_indirect_reg(L2PMINTENSET, idx_to_reg_bit(idx));
}
