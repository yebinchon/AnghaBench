
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cache_pmu {int pmu_cluster; } ;
struct cluster_pmu {int dummy; } ;


 struct cluster_pmu** per_cpu_ptr (int ,int) ;

__attribute__((used)) static inline struct cluster_pmu *get_cluster_pmu(
 struct l2cache_pmu *l2cache_pmu, int cpu)
{
 return *per_cpu_ptr(l2cache_pmu->pmu_cluster, cpu);
}
