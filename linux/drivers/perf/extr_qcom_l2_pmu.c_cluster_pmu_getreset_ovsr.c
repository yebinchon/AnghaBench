
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int L2PMOVSCLR ;
 int L2PMOVSSET ;
 int get_l2_indirect_reg (int ) ;
 int set_l2_indirect_reg (int ,int ) ;

__attribute__((used)) static inline u32 cluster_pmu_getreset_ovsr(void)
{
 u32 result = get_l2_indirect_reg(L2PMOVSSET);

 set_l2_indirect_reg(L2PMOVSCLR, result);
 return result;
}
