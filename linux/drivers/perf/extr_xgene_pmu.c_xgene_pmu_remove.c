
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_pmu {int node; int mcpmus; int mcbpmus; int iobpmus; int l3cpmus; } ;
struct platform_device {int dev; } ;


 int CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE ;
 int cpuhp_state_remove_instance (int ,int *) ;
 struct xgene_pmu* dev_get_drvdata (int *) ;
 int xgene_pmu_dev_cleanup (struct xgene_pmu*,int *) ;

__attribute__((used)) static int xgene_pmu_remove(struct platform_device *pdev)
{
 struct xgene_pmu *xgene_pmu = dev_get_drvdata(&pdev->dev);

 xgene_pmu_dev_cleanup(xgene_pmu, &xgene_pmu->l3cpmus);
 xgene_pmu_dev_cleanup(xgene_pmu, &xgene_pmu->iobpmus);
 xgene_pmu_dev_cleanup(xgene_pmu, &xgene_pmu->mcbpmus);
 xgene_pmu_dev_cleanup(xgene_pmu, &xgene_pmu->mcpmus);
 cpuhp_state_remove_instance(CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE,
        &xgene_pmu->node);

 return 0;
}
