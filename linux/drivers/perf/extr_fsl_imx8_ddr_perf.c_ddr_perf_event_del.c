
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int idx; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct ddr_pmu {int active_events; } ;


 int PERF_EF_UPDATE ;
 int ddr_perf_event_stop (struct perf_event*,int ) ;
 int ddr_perf_free_counter (struct ddr_pmu*,int) ;
 struct ddr_pmu* to_ddr_pmu (int ) ;

__attribute__((used)) static void ddr_perf_event_del(struct perf_event *event, int flags)
{
 struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 int counter = hwc->idx;

 ddr_perf_event_stop(event, PERF_EF_UPDATE);

 ddr_perf_free_counter(pmu, counter);
 pmu->active_events--;
 hwc->idx = -1;
}
