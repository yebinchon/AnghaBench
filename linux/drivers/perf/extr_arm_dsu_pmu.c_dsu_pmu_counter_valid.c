
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dsu_pmu {scalar_t__ num_counters; } ;


 scalar_t__ DSU_PMU_IDX_CYCLE_COUNTER ;

__attribute__((used)) static inline bool dsu_pmu_counter_valid(struct dsu_pmu *dsu_pmu, u32 idx)
{
 return (idx < dsu_pmu->num_counters) ||
        (idx == DSU_PMU_IDX_CYCLE_COUNTER);
}
