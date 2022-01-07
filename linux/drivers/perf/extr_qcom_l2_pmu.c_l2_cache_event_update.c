
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct hw_perf_event {scalar_t__ idx; int prev_count; } ;
struct perf_event {int count; struct hw_perf_event hw; } ;


 scalar_t__ cluster_pmu_counter_get_value (scalar_t__) ;
 scalar_t__ l2_cycle_ctr_idx ;
 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ local64_read (int *) ;

__attribute__((used)) static void l2_cache_event_update(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 u64 delta, prev, now;
 u32 idx = hwc->idx;

 do {
  prev = local64_read(&hwc->prev_count);
  now = cluster_pmu_counter_get_value(idx);
 } while (local64_cmpxchg(&hwc->prev_count, prev, now) != prev);





 delta = now - prev;
 if (idx != l2_cycle_ctr_idx)
  delta &= 0xffffffff;

 local64_add(delta, &event->count);
}
