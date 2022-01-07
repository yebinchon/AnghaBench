
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {scalar_t__ pmu; } ;
struct TYPE_2__ {scalar_t__ global_filter; } ;


 int smmu_pmu_check_global_filter (struct perf_event*,struct perf_event*) ;
 TYPE_1__* to_smmu_pmu (scalar_t__) ;

__attribute__((used)) static bool smmu_pmu_events_compatible(struct perf_event *curr,
           struct perf_event *new)
{
 if (new->pmu != curr->pmu)
  return 0;

 if (to_smmu_pmu(new->pmu)->global_filter &&
     !smmu_pmu_check_global_filter(curr, new))
  return 0;

 return 1;
}
