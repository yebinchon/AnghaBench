
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IA_L2PMXEVFILTER ;
 int L2PMXEVFILTER_ORGFILTER_ALL ;
 int L2PMXEVFILTER_ORGFILTER_IDINDEP ;
 int L2PMXEVFILTER_SUFILTER_ALL ;
 int reg_idx (int ,int) ;
 int set_l2_indirect_reg (int ,int) ;

__attribute__((used)) static inline void cluster_pmu_set_evfilter_sys_mode(u32 ctr)
{
 u32 val = L2PMXEVFILTER_SUFILTER_ALL |
     L2PMXEVFILTER_ORGFILTER_IDINDEP |
     L2PMXEVFILTER_ORGFILTER_ALL;

 set_l2_indirect_reg(reg_idx(IA_L2PMXEVFILTER, ctr), val);
}
