
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int state; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct arm_pmu {int (* enable ) (struct perf_event*) ;} ;


 int PERF_EF_RELOAD ;
 int PERF_HES_UPTODATE ;
 int WARN_ON_ONCE (int) ;
 int armpmu_event_set_period (struct perf_event*) ;
 int stub1 (struct perf_event*) ;
 struct arm_pmu* to_arm_pmu (int ) ;

__attribute__((used)) static void armpmu_start(struct perf_event *event, int flags)
{
 struct arm_pmu *armpmu = to_arm_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;





 if (flags & PERF_EF_RELOAD)
  WARN_ON_ONCE(!(hwc->state & PERF_HES_UPTODATE));

 hwc->state = 0;







 armpmu_event_set_period(event);
 armpmu->enable(event);
}
