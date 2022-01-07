
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {scalar_t__ config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cluster_pmu {int used_groups; int used_counters; TYPE_1__* l2cache_pmu; } ;
struct TYPE_2__ {int num_counters; } ;


 int EAGAIN ;
 scalar_t__ L2CYCLE_CTR_RAW_CODE ;
 unsigned int L2_EVT_GROUP (scalar_t__) ;
 int find_first_zero_bit (int ,int) ;
 int l2_cycle_ctr_idx ;
 int set_bit (unsigned int,int ) ;
 scalar_t__ test_and_set_bit (int,int ) ;
 scalar_t__ test_bit (unsigned int,int ) ;

__attribute__((used)) static int l2_cache_get_event_idx(struct cluster_pmu *cluster,
       struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 int idx;
 int num_ctrs = cluster->l2cache_pmu->num_counters - 1;
 unsigned int group;

 if (hwc->config_base == L2CYCLE_CTR_RAW_CODE) {
  if (test_and_set_bit(l2_cycle_ctr_idx, cluster->used_counters))
   return -EAGAIN;

  return l2_cycle_ctr_idx;
 }

 idx = find_first_zero_bit(cluster->used_counters, num_ctrs);
 if (idx == num_ctrs)

  return -EAGAIN;






 group = L2_EVT_GROUP(hwc->config_base);
 if (test_bit(group, cluster->used_groups))
  return -EAGAIN;

 set_bit(idx, cluster->used_counters);
 set_bit(group, cluster->used_groups);

 return idx;
}
