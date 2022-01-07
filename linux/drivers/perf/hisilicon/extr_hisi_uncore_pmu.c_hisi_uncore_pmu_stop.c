
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int state; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int WARN_ON_ONCE (int) ;
 int hisi_uncore_pmu_disable_event (struct perf_event*) ;
 int hisi_uncore_pmu_event_update (struct perf_event*) ;

void hisi_uncore_pmu_stop(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;

 hisi_uncore_pmu_disable_event(event);
 WARN_ON_ONCE(hwc->state & PERF_HES_STOPPED);
 hwc->state |= PERF_HES_STOPPED;

 if (hwc->state & PERF_HES_UPTODATE)
  return;


 hisi_uncore_pmu_event_update(event);
 hwc->state |= PERF_HES_UPTODATE;
}
