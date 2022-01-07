
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smmu_pmu {scalar_t__ reg_base; } ;


 int BIT (int ) ;
 scalar_t__ SMMU_PMCG_CNTENSET0 ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static inline void smmu_pmu_counter_enable(struct smmu_pmu *smmu_pmu, u32 idx)
{
 writeq(BIT(idx), smmu_pmu->reg_base + SMMU_PMCG_CNTENSET0);
}
