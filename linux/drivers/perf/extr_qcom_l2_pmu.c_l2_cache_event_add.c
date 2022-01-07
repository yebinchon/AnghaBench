
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int idx; int state; int prev_count; } ;
struct perf_event {int cpu; int pmu; struct hw_perf_event hw; } ;
struct cluster_pmu {struct perf_event** events; } ;


 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 struct cluster_pmu* get_cluster_pmu (int ,int ) ;
 int l2_cache_event_start (struct perf_event*,int) ;
 int l2_cache_get_event_idx (struct cluster_pmu*,struct perf_event*) ;
 int local64_set (int *,int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int to_l2cache_pmu (int ) ;

__attribute__((used)) static int l2_cache_event_add(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;
 int idx;
 int err = 0;
 struct cluster_pmu *cluster;

 cluster = get_cluster_pmu(to_l2cache_pmu(event->pmu), event->cpu);

 idx = l2_cache_get_event_idx(cluster, event);
 if (idx < 0)
  return idx;

 hwc->idx = idx;
 hwc->state = PERF_HES_STOPPED | PERF_HES_UPTODATE;
 cluster->events[idx] = event;
 local64_set(&hwc->prev_count, 0);

 if (flags & PERF_EF_START)
  l2_cache_event_start(event, flags);


 perf_event_update_userpage(event);

 return err;
}
