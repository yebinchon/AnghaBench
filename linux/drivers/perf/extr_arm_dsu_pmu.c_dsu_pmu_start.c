
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; scalar_t__ idx; } ;
struct perf_event {TYPE_1__ hw; int pmu; } ;
struct dsu_pmu {int dummy; } ;


 scalar_t__ DSU_PMU_IDX_CYCLE_COUNTER ;
 int PERF_EF_RELOAD ;
 int PERF_HES_UPTODATE ;
 int WARN_ON (int) ;
 int dsu_pmu_enable_counter (struct dsu_pmu*,scalar_t__) ;
 int dsu_pmu_set_event (struct dsu_pmu*,struct perf_event*) ;
 int dsu_pmu_set_event_period (struct perf_event*) ;
 struct dsu_pmu* to_dsu_pmu (int ) ;

__attribute__((used)) static void dsu_pmu_start(struct perf_event *event, int pmu_flags)
{
 struct dsu_pmu *dsu_pmu = to_dsu_pmu(event->pmu);


 if (pmu_flags & PERF_EF_RELOAD)
  WARN_ON(!(event->hw.state & PERF_HES_UPTODATE));
 dsu_pmu_set_event_period(event);
 if (event->hw.idx != DSU_PMU_IDX_CYCLE_COUNTER)
  dsu_pmu_set_event(dsu_pmu, event);
 event->hw.state = 0;
 dsu_pmu_enable_counter(dsu_pmu, event->hw.idx);
}
