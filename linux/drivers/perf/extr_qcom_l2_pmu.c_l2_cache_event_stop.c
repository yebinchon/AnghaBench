
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int idx; int state; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int cluster_pmu_counter_disable (int) ;
 int cluster_pmu_counter_disable_interrupt (int) ;
 int l2_cache_event_update (struct perf_event*) ;

__attribute__((used)) static void l2_cache_event_stop(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;

 if (hwc->state & PERF_HES_STOPPED)
  return;

 cluster_pmu_counter_disable_interrupt(idx);
 cluster_pmu_counter_disable(idx);

 if (flags & PERF_EF_UPDATE)
  l2_cache_event_update(event);
 hwc->state |= PERF_HES_STOPPED | PERF_HES_UPTODATE;
}
