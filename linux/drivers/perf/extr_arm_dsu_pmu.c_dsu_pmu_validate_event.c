
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct perf_event {struct pmu* pmu; } ;
struct dsu_hw_events {int dummy; } ;


 scalar_t__ dsu_pmu_get_event_idx (struct dsu_hw_events*,struct perf_event*) ;
 scalar_t__ is_software_event (struct perf_event*) ;

__attribute__((used)) static bool dsu_pmu_validate_event(struct pmu *pmu,
      struct dsu_hw_events *hw_events,
      struct perf_event *event)
{
 if (is_software_event(event))
  return 1;

 if (event->pmu != pmu)
  return 0;
 return dsu_pmu_get_event_idx(hw_events, event) >= 0;
}
