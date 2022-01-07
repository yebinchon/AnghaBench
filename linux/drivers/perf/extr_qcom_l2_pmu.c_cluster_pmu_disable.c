
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int L2PMCR ;
 int L2PMCR_COUNTERS_DISABLE ;
 int set_l2_indirect_reg (int ,int ) ;

__attribute__((used)) static inline void cluster_pmu_disable(void)
{
 set_l2_indirect_reg(L2PMCR, L2PMCR_COUNTERS_DISABLE);
}
