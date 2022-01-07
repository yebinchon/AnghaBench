
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {size_t idx; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct l3cache_pmu {int used_mask; int ** events; } ;


 int PERF_EF_UPDATE ;
 int bitmap_release_region (int ,size_t,int) ;
 scalar_t__ event_uses_long_counter (struct perf_event*) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int qcom_l3_cache__event_stop (struct perf_event*,int) ;
 struct l3cache_pmu* to_l3cache_pmu (int ) ;

__attribute__((used)) static void qcom_l3_cache__event_del(struct perf_event *event, int flags)
{
 struct l3cache_pmu *l3pmu = to_l3cache_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 int order = event_uses_long_counter(event) ? 1 : 0;


 qcom_l3_cache__event_stop(event, flags | PERF_EF_UPDATE);
 l3pmu->events[hwc->idx] = ((void*)0);
 bitmap_release_region(l3pmu->used_mask, hwc->idx, order);


 perf_event_update_userpage(event);
}
