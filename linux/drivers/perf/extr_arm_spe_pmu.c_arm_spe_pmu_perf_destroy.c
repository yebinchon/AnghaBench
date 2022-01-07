
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_spe_pmu {int pmu; } ;


 int perf_pmu_unregister (int *) ;

__attribute__((used)) static void arm_spe_pmu_perf_destroy(struct arm_spe_pmu *spe_pmu)
{
 perf_pmu_unregister(&spe_pmu->pmu);
}
