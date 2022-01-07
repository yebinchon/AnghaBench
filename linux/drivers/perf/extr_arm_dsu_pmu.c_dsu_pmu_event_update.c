
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct hw_perf_event {int idx; int prev_count; } ;
struct perf_event {int count; struct hw_perf_event hw; } ;


 scalar_t__ DSU_PMU_COUNTER_MASK (int ) ;
 scalar_t__ dsu_pmu_read_counter (struct perf_event*) ;
 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ local64_read (int *) ;

__attribute__((used)) static void dsu_pmu_event_update(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 u64 delta, prev_count, new_count;

 do {

  prev_count = local64_read(&hwc->prev_count);
  new_count = dsu_pmu_read_counter(event);
 } while (local64_cmpxchg(&hwc->prev_count, prev_count, new_count) !=
   prev_count);
 delta = (new_count - prev_count) & DSU_PMU_COUNTER_MASK(hwc->idx);
 local64_add(delta, &event->count);
}
