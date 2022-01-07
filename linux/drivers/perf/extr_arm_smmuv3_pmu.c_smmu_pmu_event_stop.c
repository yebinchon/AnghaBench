
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smmu_pmu {int dummy; } ;
struct hw_perf_event {int idx; int state; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;


 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int smmu_pmu_counter_disable (struct smmu_pmu*,int) ;
 int smmu_pmu_event_update (struct perf_event*) ;
 struct smmu_pmu* to_smmu_pmu (int ) ;

__attribute__((used)) static void smmu_pmu_event_stop(struct perf_event *event, int flags)
{
 struct smmu_pmu *smmu_pmu = to_smmu_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;

 if (hwc->state & PERF_HES_STOPPED)
  return;

 smmu_pmu_counter_disable(smmu_pmu, idx);

 smmu_pmu_event_update(event);
 hwc->state |= PERF_HES_STOPPED | PERF_HES_UPTODATE;
}
