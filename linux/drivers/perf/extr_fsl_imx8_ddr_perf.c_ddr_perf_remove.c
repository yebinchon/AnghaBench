
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ddr_pmu {int id; int pmu; int irq; int node; int cpuhp_state; } ;


 int cpuhp_state_remove_instance_nocalls (int ,int *) ;
 int ddr_ida ;
 int ida_simple_remove (int *,int ) ;
 int irq_set_affinity_hint (int ,int *) ;
 int perf_pmu_unregister (int *) ;
 struct ddr_pmu* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ddr_perf_remove(struct platform_device *pdev)
{
 struct ddr_pmu *pmu = platform_get_drvdata(pdev);

 cpuhp_state_remove_instance_nocalls(pmu->cpuhp_state, &pmu->node);
 irq_set_affinity_hint(pmu->irq, ((void*)0));

 perf_pmu_unregister(&pmu->pmu);

 ida_simple_remove(&ddr_ida, pmu->id);
 return 0;
}
