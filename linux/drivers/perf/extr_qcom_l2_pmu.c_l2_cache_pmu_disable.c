
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;


 int cluster_pmu_disable () ;

__attribute__((used)) static void l2_cache_pmu_disable(struct pmu *pmu)
{
 cluster_pmu_disable();
}
