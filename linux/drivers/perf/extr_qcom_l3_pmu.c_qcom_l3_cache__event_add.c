
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int idx; int state; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct l3cache_pmu {struct perf_event** events; int used_mask; } ;


 int EAGAIN ;
 int L3_NUM_COUNTERS ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int bitmap_find_free_region (int ,int ,int) ;
 scalar_t__ event_uses_long_counter (struct perf_event*) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int qcom_l3_cache__event_start (struct perf_event*,int ) ;
 struct l3cache_pmu* to_l3cache_pmu (int ) ;

__attribute__((used)) static int qcom_l3_cache__event_add(struct perf_event *event, int flags)
{
 struct l3cache_pmu *l3pmu = to_l3cache_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 int order = event_uses_long_counter(event) ? 1 : 0;
 int idx;




 idx = bitmap_find_free_region(l3pmu->used_mask, L3_NUM_COUNTERS, order);
 if (idx < 0)

  return -EAGAIN;

 hwc->idx = idx;
 hwc->state = PERF_HES_STOPPED | PERF_HES_UPTODATE;
 l3pmu->events[idx] = event;

 if (flags & PERF_EF_START)
  qcom_l3_cache__event_start(event, 0);


 perf_event_update_userpage(event);

 return 0;
}
