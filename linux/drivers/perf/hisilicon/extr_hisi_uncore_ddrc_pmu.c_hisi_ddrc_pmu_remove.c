
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct hisi_pmu {int node; int pmu; } ;


 int CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE ;
 int cpuhp_state_remove_instance (int ,int *) ;
 int perf_pmu_unregister (int *) ;
 struct hisi_pmu* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int hisi_ddrc_pmu_remove(struct platform_device *pdev)
{
 struct hisi_pmu *ddrc_pmu = platform_get_drvdata(pdev);

 perf_pmu_unregister(&ddrc_pmu->pmu);
 cpuhp_state_remove_instance(CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE,
        &ddrc_pmu->node);

 return 0;
}
