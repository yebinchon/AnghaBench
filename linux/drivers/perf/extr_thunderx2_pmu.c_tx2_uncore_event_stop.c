
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx2_uncore_pmu {int (* stop_event ) (struct perf_event*) ;} ;
struct hw_perf_event {int state; } ;
struct perf_event {int pmu; struct hw_perf_event hw; } ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int WARN_ON_ONCE (int) ;
 struct tx2_uncore_pmu* pmu_to_tx2_pmu (int ) ;
 int stub1 (struct perf_event*) ;
 int tx2_uncore_event_update (struct perf_event*) ;

__attribute__((used)) static void tx2_uncore_event_stop(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;
 struct tx2_uncore_pmu *tx2_pmu;

 if (hwc->state & PERF_HES_UPTODATE)
  return;

 tx2_pmu = pmu_to_tx2_pmu(event->pmu);
 tx2_pmu->stop_event(event);
 WARN_ON_ONCE(hwc->state & PERF_HES_STOPPED);
 hwc->state |= PERF_HES_STOPPED;
 if (flags & PERF_EF_UPDATE) {
  tx2_uncore_event_update(event);
  hwc->state |= PERF_HES_UPTODATE;
 }
}
