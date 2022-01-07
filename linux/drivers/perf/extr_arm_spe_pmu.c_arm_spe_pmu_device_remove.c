
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct arm_spe_pmu {int handle; } ;


 int arm_spe_pmu_dev_teardown (struct arm_spe_pmu*) ;
 int arm_spe_pmu_perf_destroy (struct arm_spe_pmu*) ;
 int free_percpu (int ) ;
 struct arm_spe_pmu* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int arm_spe_pmu_device_remove(struct platform_device *pdev)
{
 struct arm_spe_pmu *spe_pmu = platform_get_drvdata(pdev);

 arm_spe_pmu_perf_destroy(spe_pmu);
 arm_spe_pmu_dev_teardown(spe_pmu);
 free_percpu(spe_pmu->handle);
 return 0;
}
