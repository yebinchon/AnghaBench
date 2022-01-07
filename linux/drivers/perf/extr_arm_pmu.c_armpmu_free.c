
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_pmu {int hw_events; } ;


 int free_percpu (int ) ;
 int kfree (struct arm_pmu*) ;

void armpmu_free(struct arm_pmu *pmu)
{
 free_percpu(pmu->hw_events);
 kfree(pmu);
}
