
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_hw_events {struct perf_event** events; } ;
struct hw_perf_event {int idx; int state; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct arm_pmu {int (* get_event_idx ) (struct pmu_hw_events*,struct perf_event*) ;int (* disable ) (struct perf_event*) ;int supported_cpus; int hw_events; } ;


 int ENOENT ;
 int PERF_EF_RELOAD ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int armpmu_start (struct perf_event*,int ) ;
 int cpumask_test_cpu (int ,int *) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int smp_processor_id () ;
 int stub1 (struct pmu_hw_events*,struct perf_event*) ;
 int stub2 (struct perf_event*) ;
 struct pmu_hw_events* this_cpu_ptr (int ) ;
 struct arm_pmu* to_arm_pmu (int ) ;

__attribute__((used)) static int
armpmu_add(struct perf_event *event, int flags)
{
 struct arm_pmu *armpmu = to_arm_pmu(event->pmu);
 struct pmu_hw_events *hw_events = this_cpu_ptr(armpmu->hw_events);
 struct hw_perf_event *hwc = &event->hw;
 int idx;


 if (!cpumask_test_cpu(smp_processor_id(), &armpmu->supported_cpus))
  return -ENOENT;


 idx = armpmu->get_event_idx(hw_events, event);
 if (idx < 0)
  return idx;





 event->hw.idx = idx;
 armpmu->disable(event);
 hw_events->events[idx] = event;

 hwc->state = PERF_HES_STOPPED | PERF_HES_UPTODATE;
 if (flags & PERF_EF_START)
  armpmu_start(event, PERF_EF_RELOAD);


 perf_event_update_userpage(event);

 return 0;
}
