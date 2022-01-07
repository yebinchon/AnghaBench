
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int idx; int prev_count; } ;
struct perf_event {TYPE_1__ hw; } ;


 int DSU_PMU_COUNTER_MASK (int) ;
 int dsu_pmu_write_counter (struct perf_event*,int) ;
 int local64_set (int *,int) ;

__attribute__((used)) static void dsu_pmu_set_event_period(struct perf_event *event)
{
 int idx = event->hw.idx;
 u64 val = DSU_PMU_COUNTER_MASK(idx) >> 1;

 local64_set(&event->hw.prev_count, val);
 dsu_pmu_write_counter(event, val);
}
