
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct hw_perf_event {int prev_count; } ;
struct perf_event {int count; struct hw_perf_event hw; int pmu; } ;
struct hisi_pmu {int counter_bits; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ (* read_counter ) (struct hisi_pmu*,struct hw_perf_event*) ;} ;


 scalar_t__ HISI_MAX_PERIOD (int ) ;
 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ local64_read (int *) ;
 scalar_t__ stub1 (struct hisi_pmu*,struct hw_perf_event*) ;
 struct hisi_pmu* to_hisi_pmu (int ) ;

void hisi_uncore_pmu_event_update(struct perf_event *event)
{
 struct hisi_pmu *hisi_pmu = to_hisi_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 u64 delta, prev_raw_count, new_raw_count;

 do {

  new_raw_count = hisi_pmu->ops->read_counter(hisi_pmu, hwc);
  prev_raw_count = local64_read(&hwc->prev_count);
 } while (local64_cmpxchg(&hwc->prev_count, prev_raw_count,
     new_raw_count) != prev_raw_count);



 delta = (new_raw_count - prev_raw_count) &
  HISI_MAX_PERIOD(hisi_pmu->counter_bits);
 local64_add(delta, &event->count);
}
