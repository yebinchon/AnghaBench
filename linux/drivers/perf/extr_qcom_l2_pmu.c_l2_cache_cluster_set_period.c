
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct hw_perf_event {scalar_t__ idx; int prev_count; } ;
struct cluster_pmu {int dummy; } ;


 int L2_COUNTER_RELOAD ;
 int L2_CYCLE_COUNTER_RELOAD ;
 int cluster_pmu_counter_set_value (scalar_t__,int ) ;
 scalar_t__ l2_cycle_ctr_idx ;
 int local64_set (int *,int ) ;

__attribute__((used)) static void l2_cache_cluster_set_period(struct cluster_pmu *cluster,
           struct hw_perf_event *hwc)
{
 u32 idx = hwc->idx;
 u64 new;






 if (idx == l2_cycle_ctr_idx)
  new = L2_CYCLE_COUNTER_RELOAD;
 else
  new = L2_COUNTER_RELOAD;

 local64_set(&hwc->prev_count, new);
 cluster_pmu_counter_set_value(idx, new);
}
