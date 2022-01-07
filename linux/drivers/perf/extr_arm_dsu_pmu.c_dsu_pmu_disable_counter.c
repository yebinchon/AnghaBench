
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsu_pmu {int dummy; } ;


 int __dsu_pmu_counter_interrupt_disable (int) ;
 int __dsu_pmu_disable_counter (int) ;

__attribute__((used)) static void dsu_pmu_disable_counter(struct dsu_pmu *dsu_pmu, int idx)
{
 __dsu_pmu_disable_counter(idx);
 __dsu_pmu_counter_interrupt_disable(idx);
}
