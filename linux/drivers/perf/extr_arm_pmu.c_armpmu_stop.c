
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int state; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct arm_pmu {int (* disable ) (struct perf_event*) ;} ;


 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int armpmu_event_update (struct perf_event*) ;
 int stub1 (struct perf_event*) ;
 struct arm_pmu* to_arm_pmu (int ) ;

__attribute__((used)) static void
armpmu_stop(struct perf_event *event, int flags)
{
 struct arm_pmu *armpmu = to_arm_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;





 if (!(hwc->state & PERF_HES_STOPPED)) {
  armpmu->disable(event);
  armpmu_event_update(event);
  hwc->state |= PERF_HES_STOPPED | PERF_HES_UPTODATE;
 }
}
