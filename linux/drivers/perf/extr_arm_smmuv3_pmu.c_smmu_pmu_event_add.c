
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smmu_pmu {struct perf_event** events; } ;
struct hw_perf_event {int idx; int state; int prev_count; } ;
struct perf_event {int pmu; struct hw_perf_event hw; } ;


 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int local64_set (int *,int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int smmu_pmu_event_start (struct perf_event*,int) ;
 int smmu_pmu_get_event_idx (struct smmu_pmu*,struct perf_event*) ;
 int smmu_pmu_interrupt_enable (struct smmu_pmu*,int) ;
 struct smmu_pmu* to_smmu_pmu (int ) ;

__attribute__((used)) static int smmu_pmu_event_add(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;
 int idx;
 struct smmu_pmu *smmu_pmu = to_smmu_pmu(event->pmu);

 idx = smmu_pmu_get_event_idx(smmu_pmu, event);
 if (idx < 0)
  return idx;

 hwc->idx = idx;
 hwc->state = PERF_HES_STOPPED | PERF_HES_UPTODATE;
 smmu_pmu->events[idx] = event;
 local64_set(&hwc->prev_count, 0);

 smmu_pmu_interrupt_enable(smmu_pmu, idx);

 if (flags & PERF_EF_START)
  smmu_pmu_event_start(event, flags);


 perf_event_update_userpage(event);

 return 0;
}
