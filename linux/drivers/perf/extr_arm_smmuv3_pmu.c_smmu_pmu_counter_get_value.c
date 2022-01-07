
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct smmu_pmu {int counter_mask; scalar_t__ reloc_base; } ;


 int BIT (int) ;
 scalar_t__ SMMU_PMCG_EVCNTR (int ,int) ;
 int readl (scalar_t__) ;
 int readq (scalar_t__) ;

__attribute__((used)) static inline u64 smmu_pmu_counter_get_value(struct smmu_pmu *smmu_pmu, u32 idx)
{
 u64 value;

 if (smmu_pmu->counter_mask & BIT(32))
  value = readq(smmu_pmu->reloc_base + SMMU_PMCG_EVCNTR(idx, 8));
 else
  value = readl(smmu_pmu->reloc_base + SMMU_PMCG_EVCNTR(idx, 4));

 return value;
}
