
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IA_L2PMXEVCNTCR ;
 int reg_idx (int ,int ) ;
 int set_l2_indirect_reg (int ,int ) ;

__attribute__((used)) static inline void cluster_pmu_set_evcntcr(u32 ctr, u32 val)
{
 set_l2_indirect_reg(reg_idx(IA_L2PMXEVCNTCR, ctr), val);
}
