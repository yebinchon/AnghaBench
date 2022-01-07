
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct hw_perf_event {int prev_count; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct hisi_pmu {TYPE_1__* ops; scalar_t__ counter_bits; } ;
struct TYPE_2__ {int (* write_counter ) (struct hisi_pmu*,struct hw_perf_event*,int ) ;} ;


 int BIT_ULL (scalar_t__) ;
 int local64_set (int *,int ) ;
 int stub1 (struct hisi_pmu*,struct hw_perf_event*,int ) ;
 struct hisi_pmu* to_hisi_pmu (int ) ;

void hisi_uncore_pmu_set_event_period(struct perf_event *event)
{
 struct hisi_pmu *hisi_pmu = to_hisi_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 u64 val = BIT_ULL(hisi_pmu->counter_bits - 1);

 local64_set(&hwc->prev_count, val);

 hisi_pmu->ops->write_counter(hisi_pmu, hwc, val);
}
