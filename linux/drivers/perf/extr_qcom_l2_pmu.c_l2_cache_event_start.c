
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hw_perf_event {int idx; scalar_t__ config_base; scalar_t__ state; } ;
struct perf_event {int cpu; int pmu; struct hw_perf_event hw; } ;
struct cluster_pmu {int dummy; } ;


 scalar_t__ L2CYCLE_CTR_RAW_CODE ;
 scalar_t__ L2_EVT_CODE (scalar_t__) ;
 scalar_t__ L2_EVT_GROUP (scalar_t__) ;
 int cluster_pmu_counter_enable (int) ;
 int cluster_pmu_counter_enable_interrupt (int) ;
 int cluster_pmu_set_evccntcr (int ) ;
 int cluster_pmu_set_evcntcr (int,int ) ;
 int cluster_pmu_set_evfilter_sys_mode (int) ;
 int cluster_pmu_set_evtyper (int,scalar_t__) ;
 int cluster_pmu_set_resr (struct cluster_pmu*,scalar_t__,scalar_t__) ;
 struct cluster_pmu* get_cluster_pmu (int ,int ) ;
 int l2_cache_cluster_set_period (struct cluster_pmu*,struct hw_perf_event*) ;
 int to_l2cache_pmu (int ) ;

__attribute__((used)) static void l2_cache_event_start(struct perf_event *event, int flags)
{
 struct cluster_pmu *cluster;
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;
 u32 config;
 u32 event_cc, event_group;

 hwc->state = 0;

 cluster = get_cluster_pmu(to_l2cache_pmu(event->pmu), event->cpu);

 l2_cache_cluster_set_period(cluster, hwc);

 if (hwc->config_base == L2CYCLE_CTR_RAW_CODE) {
  cluster_pmu_set_evccntcr(0);
 } else {
  config = hwc->config_base;
  event_cc = L2_EVT_CODE(config);
  event_group = L2_EVT_GROUP(config);

  cluster_pmu_set_evcntcr(idx, 0);
  cluster_pmu_set_evtyper(idx, event_group);
  cluster_pmu_set_resr(cluster, event_group, event_cc);
  cluster_pmu_set_evfilter_sys_mode(idx);
 }

 cluster_pmu_counter_enable_interrupt(idx);
 cluster_pmu_counter_enable(idx);
}
