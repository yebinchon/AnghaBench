
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {int idx; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct hisi_pmu {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* enable_counter ) (struct hisi_pmu*,struct hw_perf_event*) ;int (* enable_counter_int ) (struct hisi_pmu*,struct hw_perf_event*) ;int (* write_evtype ) (struct hisi_pmu*,int ,int ) ;} ;


 int HISI_GET_EVENTID (struct perf_event*) ;
 int stub1 (struct hisi_pmu*,int ,int ) ;
 int stub2 (struct hisi_pmu*,struct hw_perf_event*) ;
 int stub3 (struct hisi_pmu*,struct hw_perf_event*) ;
 struct hisi_pmu* to_hisi_pmu (int ) ;

__attribute__((used)) static void hisi_uncore_pmu_enable_event(struct perf_event *event)
{
 struct hisi_pmu *hisi_pmu = to_hisi_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;

 hisi_pmu->ops->write_evtype(hisi_pmu, hwc->idx,
        HISI_GET_EVENTID(event));

 hisi_pmu->ops->enable_counter_int(hisi_pmu, hwc);
 hisi_pmu->ops->enable_counter(hisi_pmu, hwc);
}
