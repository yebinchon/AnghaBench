
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {size_t idx; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct TYPE_2__ {int ** hw_events; } ;
struct hisi_pmu {TYPE_1__ pmu_events; } ;


 int PERF_EF_UPDATE ;
 int hisi_uncore_pmu_clear_event_idx (struct hisi_pmu*,size_t) ;
 int hisi_uncore_pmu_stop (struct perf_event*,int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 struct hisi_pmu* to_hisi_pmu (int ) ;

void hisi_uncore_pmu_del(struct perf_event *event, int flags)
{
 struct hisi_pmu *hisi_pmu = to_hisi_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;

 hisi_uncore_pmu_stop(event, PERF_EF_UPDATE);
 hisi_uncore_pmu_clear_event_idx(hisi_pmu, hwc->idx);
 perf_event_update_userpage(event);
 hisi_pmu->pmu_events.hw_events[hwc->idx] = ((void*)0);
}
