
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx2_uncore_pmu {int ** events; } ;
struct hw_perf_event {size_t idx; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;


 int GET_COUNTERID (struct perf_event*) ;
 int PERF_EF_UPDATE ;
 int free_counter (struct tx2_uncore_pmu*,int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 struct tx2_uncore_pmu* pmu_to_tx2_pmu (int ) ;
 int tx2_uncore_event_stop (struct perf_event*,int ) ;

__attribute__((used)) static void tx2_uncore_event_del(struct perf_event *event, int flags)
{
 struct tx2_uncore_pmu *tx2_pmu = pmu_to_tx2_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;

 tx2_uncore_event_stop(event, PERF_EF_UPDATE);


 free_counter(tx2_pmu, GET_COUNTERID(event));

 perf_event_update_userpage(event);
 tx2_pmu->events[hwc->idx] = ((void*)0);
 hwc->idx = -1;
}
