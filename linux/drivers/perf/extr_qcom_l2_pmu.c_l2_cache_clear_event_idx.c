
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int idx; scalar_t__ config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cluster_pmu {int used_groups; int used_counters; } ;


 scalar_t__ L2CYCLE_CTR_RAW_CODE ;
 int L2_EVT_GROUP (scalar_t__) ;
 int clear_bit (int,int ) ;

__attribute__((used)) static void l2_cache_clear_event_idx(struct cluster_pmu *cluster,
          struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;

 clear_bit(idx, cluster->used_counters);
 if (hwc->config_base != L2CYCLE_CTR_RAW_CODE)
  clear_bit(L2_EVT_GROUP(hwc->config_base), cluster->used_groups);
}
