
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct perf_event {struct pmu* pmu; } ;


 scalar_t__ is_software_event (struct perf_event*) ;

__attribute__((used)) static bool tx2_uncore_validate_event(struct pmu *pmu,
      struct perf_event *event, int *counters)
{
 if (is_software_event(event))
  return 1;

 if (event->pmu != pmu)
  return 0;

 *counters = *counters + 1;
 return 1;
}
