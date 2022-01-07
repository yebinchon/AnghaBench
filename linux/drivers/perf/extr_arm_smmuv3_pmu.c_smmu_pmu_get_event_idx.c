
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smmu_pmu {unsigned int num_counters; int used_counters; } ;
struct perf_event {int dummy; } ;


 int EAGAIN ;
 int find_first_zero_bit (int ,unsigned int) ;
 int set_bit (int,int ) ;
 int smmu_pmu_apply_event_filter (struct smmu_pmu*,struct perf_event*,int) ;

__attribute__((used)) static int smmu_pmu_get_event_idx(struct smmu_pmu *smmu_pmu,
      struct perf_event *event)
{
 int idx, err;
 unsigned int num_ctrs = smmu_pmu->num_counters;

 idx = find_first_zero_bit(smmu_pmu->used_counters, num_ctrs);
 if (idx == num_ctrs)

  return -EAGAIN;

 err = smmu_pmu_apply_event_filter(smmu_pmu, event, idx);
 if (err)
  return err;

 set_bit(idx, smmu_pmu->used_counters);

 return idx;
}
