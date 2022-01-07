
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int idx; } ;
struct perf_event {int cpu; int pmu; struct hw_perf_event hw; } ;
struct cluster_pmu {int ** events; } ;


 int PERF_EF_UPDATE ;
 struct cluster_pmu* get_cluster_pmu (int ,int ) ;
 int l2_cache_clear_event_idx (struct cluster_pmu*,struct perf_event*) ;
 int l2_cache_event_stop (struct perf_event*,int) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int to_l2cache_pmu (int ) ;

__attribute__((used)) static void l2_cache_event_del(struct perf_event *event, int flags)
{
 struct hw_perf_event *hwc = &event->hw;
 struct cluster_pmu *cluster;
 int idx = hwc->idx;

 cluster = get_cluster_pmu(to_l2cache_pmu(event->pmu), event->cpu);

 l2_cache_event_stop(event, flags | PERF_EF_UPDATE);
 cluster->events[idx] = ((void*)0);
 l2_cache_clear_event_idx(cluster, event);

 perf_event_update_userpage(event);
}
