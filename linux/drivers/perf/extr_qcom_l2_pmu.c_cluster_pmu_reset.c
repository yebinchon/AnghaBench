
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int L2PMCNTENCLR ;
 int L2PMCR ;
 int L2PMCR_RESET_ALL ;
 int L2PMINTENCLR ;
 int L2PMOVSCLR ;
 int l2_counter_present_mask ;
 int set_l2_indirect_reg (int ,int ) ;

__attribute__((used)) static void cluster_pmu_reset(void)
{

 set_l2_indirect_reg(L2PMCR, L2PMCR_RESET_ALL);
 set_l2_indirect_reg(L2PMCNTENCLR, l2_counter_present_mask);
 set_l2_indirect_reg(L2PMINTENCLR, l2_counter_present_mask);
 set_l2_indirect_reg(L2PMOVSCLR, l2_counter_present_mask);
}
