
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct smmu_pmu {scalar_t__ counter_mask; } ;
struct hw_perf_event {int prev_count; int idx; } ;
struct perf_event {int count; int pmu; struct hw_perf_event hw; } ;


 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ local64_read (int *) ;
 scalar_t__ smmu_pmu_counter_get_value (struct smmu_pmu*,int ) ;
 struct smmu_pmu* to_smmu_pmu (int ) ;

__attribute__((used)) static void smmu_pmu_event_update(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 struct smmu_pmu *smmu_pmu = to_smmu_pmu(event->pmu);
 u64 delta, prev, now;
 u32 idx = hwc->idx;

 do {
  prev = local64_read(&hwc->prev_count);
  now = smmu_pmu_counter_get_value(smmu_pmu, idx);
 } while (local64_cmpxchg(&hwc->prev_count, prev, now) != prev);


 delta = now - prev;
 delta &= smmu_pmu->counter_mask;

 local64_add(delta, &event->count);
}
