
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smmu_pmu {int used_counters; int ** events; } ;
struct hw_perf_event {int idx; } ;
struct perf_event {int pmu; struct hw_perf_event hw; } ;


 int PERF_EF_UPDATE ;
 int clear_bit (int,int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int smmu_pmu_event_stop (struct perf_event*,int) ;
 int smmu_pmu_interrupt_disable (struct smmu_pmu*,int) ;
 struct smmu_pmu* to_smmu_pmu (int ) ;

__attribute__((used)) static void smmu_pmu_event_del(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;
 struct smmu_pmu *smmu_pmu = to_smmu_pmu(event->pmu);
 int idx = hwc->idx;

 smmu_pmu_event_stop(event, flags | PERF_EF_UPDATE);
 smmu_pmu_interrupt_disable(smmu_pmu, idx);
 smmu_pmu->events[idx] = ((void*)0);
 clear_bit(idx, smmu_pmu->used_counters);

 perf_event_update_userpage(event);
}
