
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx2_uncore_pmu {int (* init_cntr_base ) (struct perf_event*,struct tx2_uncore_pmu*) ;struct perf_event** events; } ;
struct hw_perf_event {size_t idx; int state; } ;
struct perf_event {int pmu; struct hw_perf_event hw; } ;


 int EAGAIN ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 size_t alloc_counter (struct tx2_uncore_pmu*) ;
 struct tx2_uncore_pmu* pmu_to_tx2_pmu (int ) ;
 int stub1 (struct perf_event*,struct tx2_uncore_pmu*) ;
 int tx2_uncore_event_start (struct perf_event*,int) ;

__attribute__((used)) static int tx2_uncore_event_add(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;
 struct tx2_uncore_pmu *tx2_pmu;

 tx2_pmu = pmu_to_tx2_pmu(event->pmu);


 hwc->idx = alloc_counter(tx2_pmu);
 if (hwc->idx < 0)
  return -EAGAIN;

 tx2_pmu->events[hwc->idx] = event;

 tx2_pmu->init_cntr_base(event, tx2_pmu);

 hwc->state = PERF_HES_UPTODATE | PERF_HES_STOPPED;
 if (flags & PERF_EF_START)
  tx2_uncore_event_start(event, flags);

 return 0;
}
