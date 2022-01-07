
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsu_pmu {int num_counters; } ;


 int dsu_pmu_get_reset_overflow () ;
 int dsu_pmu_probe_pmu (struct dsu_pmu*) ;

__attribute__((used)) static void dsu_pmu_init_pmu(struct dsu_pmu *dsu_pmu)
{
 if (dsu_pmu->num_counters == -1)
  dsu_pmu_probe_pmu(dsu_pmu);

 dsu_pmu_get_reset_overflow();
}
