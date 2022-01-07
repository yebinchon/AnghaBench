
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smmu_pmu {int pmu; } ;
struct platform_device {int dummy; } ;


 struct smmu_pmu* platform_get_drvdata (struct platform_device*) ;
 int smmu_pmu_disable (int *) ;

__attribute__((used)) static void smmu_pmu_shutdown(struct platform_device *pdev)
{
 struct smmu_pmu *smmu_pmu = platform_get_drvdata(pdev);

 smmu_pmu_disable(&smmu_pmu->pmu);
}
