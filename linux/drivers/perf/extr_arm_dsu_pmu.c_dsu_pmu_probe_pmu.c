
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct dsu_pmu {int num_counters; int cpmceid_bitmap; } ;


 int CLUSTERPMCR_N_MASK ;
 int CLUSTERPMCR_N_SHIFT ;
 int DSU_PMU_MAX_COMMON_EVENTS ;
 scalar_t__ WARN_ON (int) ;
 int __dsu_pmu_read_pmceid (int) ;
 int __dsu_pmu_read_pmcr () ;
 int bitmap_from_arr32 (int ,int *,int ) ;

__attribute__((used)) static void dsu_pmu_probe_pmu(struct dsu_pmu *dsu_pmu)
{
 u64 num_counters;
 u32 cpmceid[2];

 num_counters = (__dsu_pmu_read_pmcr() >> CLUSTERPMCR_N_SHIFT) &
      CLUSTERPMCR_N_MASK;

 if (WARN_ON(num_counters > 31))
  num_counters = 31;
 dsu_pmu->num_counters = num_counters;
 if (!dsu_pmu->num_counters)
  return;
 cpmceid[0] = __dsu_pmu_read_pmceid(0);
 cpmceid[1] = __dsu_pmu_read_pmceid(1);
 bitmap_from_arr32(dsu_pmu->cpmceid_bitmap, cpmceid,
     DSU_PMU_MAX_COMMON_EVENTS);
}
