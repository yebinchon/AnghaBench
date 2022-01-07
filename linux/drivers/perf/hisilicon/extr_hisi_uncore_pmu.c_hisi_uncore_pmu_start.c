
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct hw_perf_event {int state; int prev_count; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct hisi_pmu {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write_counter ) (struct hisi_pmu*,struct hw_perf_event*,int ) ;} ;


 int PERF_EF_RELOAD ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int hisi_uncore_pmu_enable_event (struct perf_event*) ;
 int hisi_uncore_pmu_set_event_period (struct perf_event*) ;
 int local64_read (int *) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int stub1 (struct hisi_pmu*,struct hw_perf_event*,int ) ;
 struct hisi_pmu* to_hisi_pmu (int ) ;

void hisi_uncore_pmu_start(struct perf_event *event, int flags)
{
 struct hisi_pmu *hisi_pmu = to_hisi_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;

 if (WARN_ON_ONCE(!(hwc->state & PERF_HES_STOPPED)))
  return;

 WARN_ON_ONCE(!(hwc->state & PERF_HES_UPTODATE));
 hwc->state = 0;
 hisi_uncore_pmu_set_event_period(event);

 if (flags & PERF_EF_RELOAD) {
  u64 prev_raw_count = local64_read(&hwc->prev_count);

  hisi_pmu->ops->write_counter(hisi_pmu, hwc, prev_raw_count);
 }

 hisi_uncore_pmu_enable_event(event);
 perf_event_update_userpage(event);
}
