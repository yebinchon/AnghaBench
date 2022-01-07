
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct perf_event {int pmu; } ;
struct TYPE_2__ {unsigned long* used_mask; } ;
struct hisi_pmu {int num_counters; TYPE_1__ pmu_events; } ;


 int EAGAIN ;
 int find_first_zero_bit (unsigned long*,int) ;
 int set_bit (int,unsigned long*) ;
 struct hisi_pmu* to_hisi_pmu (int ) ;

int hisi_uncore_pmu_get_event_idx(struct perf_event *event)
{
 struct hisi_pmu *hisi_pmu = to_hisi_pmu(event->pmu);
 unsigned long *used_mask = hisi_pmu->pmu_events.used_mask;
 u32 num_counters = hisi_pmu->num_counters;
 int idx;

 idx = find_first_zero_bit(used_mask, num_counters);
 if (idx == num_counters)
  return -EAGAIN;

 set_bit(idx, used_mask);

 return idx;
}
