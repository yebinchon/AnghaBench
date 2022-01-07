
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dsu_pmu {int irq; int cpuhp_node; int pmu; } ;


 int cpuhp_state_remove_instance (int ,int *) ;
 int dsu_pmu_cpuhp_state ;
 int irq_set_affinity_hint (int ,int *) ;
 int perf_pmu_unregister (int *) ;
 struct dsu_pmu* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int dsu_pmu_device_remove(struct platform_device *pdev)
{
 struct dsu_pmu *dsu_pmu = platform_get_drvdata(pdev);

 perf_pmu_unregister(&dsu_pmu->pmu);
 cpuhp_state_remove_instance(dsu_pmu_cpuhp_state, &dsu_pmu->cpuhp_node);
 irq_set_affinity_hint(dsu_pmu->irq, ((void*)0));

 return 0;
}
