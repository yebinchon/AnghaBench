
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx2_uncore_pmu {int hrtimer_interval; int hrtimer; int max_counters; int active_counters; int (* start_event ) (struct perf_event*,int) ;} ;
struct hw_perf_event {scalar_t__ state; } ;
struct perf_event {int pmu; struct hw_perf_event hw; } ;


 int HRTIMER_MODE_REL_PINNED ;
 int bitmap_weight (int ,int ) ;
 int hrtimer_start (int *,int ,int ) ;
 int ns_to_ktime (int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 struct tx2_uncore_pmu* pmu_to_tx2_pmu (int ) ;
 int stub1 (struct perf_event*,int) ;

__attribute__((used)) static void tx2_uncore_event_start(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;
 struct tx2_uncore_pmu *tx2_pmu;

 hwc->state = 0;
 tx2_pmu = pmu_to_tx2_pmu(event->pmu);

 tx2_pmu->start_event(event, flags);
 perf_event_update_userpage(event);


 if (bitmap_weight(tx2_pmu->active_counters,
    tx2_pmu->max_counters) == 1) {
  hrtimer_start(&tx2_pmu->hrtimer,
   ns_to_ktime(tx2_pmu->hrtimer_interval),
   HRTIMER_MODE_REL_PINNED);
 }
}
