
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hw_perf_event {int state; int idx; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct TYPE_4__ {struct perf_event** hw_events; } ;
struct hisi_pmu {TYPE_2__ pmu_events; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_event_idx ) (struct perf_event*) ;} ;


 int PERF_EF_RELOAD ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int hisi_uncore_pmu_start (struct perf_event*,int ) ;
 int stub1 (struct perf_event*) ;
 struct hisi_pmu* to_hisi_pmu (int ) ;

int hisi_uncore_pmu_add(struct perf_event *event, int flags)
{
 struct hisi_pmu *hisi_pmu = to_hisi_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 int idx;

 hwc->state = PERF_HES_STOPPED | PERF_HES_UPTODATE;


 idx = hisi_pmu->ops->get_event_idx(event);
 if (idx < 0)
  return idx;

 event->hw.idx = idx;
 hisi_pmu->pmu_events.hw_events[idx] = event;

 if (flags & PERF_EF_START)
  hisi_uncore_pmu_start(event, PERF_EF_RELOAD);

 return 0;
}
