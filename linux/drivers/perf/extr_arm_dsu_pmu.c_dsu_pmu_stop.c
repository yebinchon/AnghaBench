
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; int idx; } ;
struct perf_event {TYPE_1__ hw; int pmu; } ;
struct dsu_pmu {int dummy; } ;


 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int dsu_pmu_disable_counter (struct dsu_pmu*,int ) ;
 int dsu_pmu_event_update (struct perf_event*) ;
 struct dsu_pmu* to_dsu_pmu (int ) ;

__attribute__((used)) static void dsu_pmu_stop(struct perf_event *event, int pmu_flags)
{
 struct dsu_pmu *dsu_pmu = to_dsu_pmu(event->pmu);

 if (event->hw.state & PERF_HES_STOPPED)
  return;
 dsu_pmu_disable_counter(dsu_pmu, event->hw.idx);
 dsu_pmu_event_update(event);
 event->hw.state |= PERF_HES_STOPPED | PERF_HES_UPTODATE;
}
