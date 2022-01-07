
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct smmu_pmu {int options; int counter_mask; } ;
struct hw_perf_event {int prev_count; int idx; } ;


 int SMMU_PMCG_EVCNTR_RDONLY ;
 int local64_set (int *,int) ;
 int smmu_pmu_counter_get_value (struct smmu_pmu*,int ) ;
 int smmu_pmu_counter_set_value (struct smmu_pmu*,int ,int) ;

__attribute__((used)) static void smmu_pmu_set_period(struct smmu_pmu *smmu_pmu,
    struct hw_perf_event *hwc)
{
 u32 idx = hwc->idx;
 u64 new;

 if (smmu_pmu->options & SMMU_PMCG_EVCNTR_RDONLY) {







  new = smmu_pmu_counter_get_value(smmu_pmu, idx);
 } else {






  new = smmu_pmu->counter_mask >> 1;
  smmu_pmu_counter_set_value(smmu_pmu, idx, new);
 }

 local64_set(&hwc->prev_count, new);
}
