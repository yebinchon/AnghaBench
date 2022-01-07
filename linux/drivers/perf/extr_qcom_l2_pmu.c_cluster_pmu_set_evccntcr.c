
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int L2PMCCNTCR ;
 int set_l2_indirect_reg (int ,int ) ;

__attribute__((used)) static inline void cluster_pmu_set_evccntcr(u32 val)
{
 set_l2_indirect_reg(L2PMCCNTCR, val);
}
