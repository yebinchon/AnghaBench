
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smmu_pmu {int node; int pmu; } ;
struct platform_device {int dummy; } ;


 int cpuhp_state_num ;
 int cpuhp_state_remove_instance_nocalls (int ,int *) ;
 int perf_pmu_unregister (int *) ;
 struct smmu_pmu* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int smmu_pmu_remove(struct platform_device *pdev)
{
 struct smmu_pmu *smmu_pmu = platform_get_drvdata(pdev);

 perf_pmu_unregister(&smmu_pmu->pmu);
 cpuhp_state_remove_instance_nocalls(cpuhp_state_num, &smmu_pmu->node);

 return 0;
}
