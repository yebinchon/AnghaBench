
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct smmu_pmu {scalar_t__ reloc_base; scalar_t__ reg_base; int pmu; scalar_t__ num_counters; } ;


 int GENMASK_ULL (scalar_t__,int ) ;
 scalar_t__ SMMU_PMCG_CNTENCLR0 ;
 scalar_t__ SMMU_PMCG_INTENCLR0 ;
 scalar_t__ SMMU_PMCG_OVSCLR0 ;
 int smmu_pmu_disable (int *) ;
 int writeq_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void smmu_pmu_reset(struct smmu_pmu *smmu_pmu)
{
 u64 counter_present_mask = GENMASK_ULL(smmu_pmu->num_counters - 1, 0);

 smmu_pmu_disable(&smmu_pmu->pmu);


 writeq_relaxed(counter_present_mask,
         smmu_pmu->reg_base + SMMU_PMCG_CNTENCLR0);
 writeq_relaxed(counter_present_mask,
         smmu_pmu->reg_base + SMMU_PMCG_INTENCLR0);
 writeq_relaxed(counter_present_mask,
         smmu_pmu->reloc_base + SMMU_PMCG_OVSCLR0);
}
