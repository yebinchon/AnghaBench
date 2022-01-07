
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_hw_events {int ** events; } ;
struct hw_perf_event {int idx; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct arm_pmu {int (* clear_event_idx ) (struct pmu_hw_events*,struct perf_event*) ;int hw_events; } ;


 int PERF_EF_UPDATE ;
 int armpmu_stop (struct perf_event*,int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int stub1 (struct pmu_hw_events*,struct perf_event*) ;
 struct pmu_hw_events* this_cpu_ptr (int ) ;
 struct arm_pmu* to_arm_pmu (int ) ;

__attribute__((used)) static void
armpmu_del(struct perf_event *event, int flags)
{
 struct arm_pmu *armpmu = to_arm_pmu(event->pmu);
 struct pmu_hw_events *hw_events = this_cpu_ptr(armpmu->hw_events);
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;

 armpmu_stop(event, PERF_EF_UPDATE);
 hw_events->events[idx] = ((void*)0);
 armpmu->clear_event_idx(hw_events, event);
 perf_event_update_userpage(event);

 hwc->idx = -1;
}
