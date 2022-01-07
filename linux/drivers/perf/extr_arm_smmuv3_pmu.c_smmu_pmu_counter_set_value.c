
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct smmu_pmu {int counter_mask; scalar_t__ reloc_base; } ;


 int BIT (int) ;
 scalar_t__ SMMU_PMCG_EVCNTR (int ,int) ;
 int writel (int ,scalar_t__) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static inline void smmu_pmu_counter_set_value(struct smmu_pmu *smmu_pmu,
           u32 idx, u64 value)
{
 if (smmu_pmu->counter_mask & BIT(32))
  writeq(value, smmu_pmu->reloc_base + SMMU_PMCG_EVCNTR(idx, 8));
 else
  writel(value, smmu_pmu->reloc_base + SMMU_PMCG_EVCNTR(idx, 4));
}
