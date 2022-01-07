
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct l2cache_pmu {int node; int pmu; } ;


 int CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE ;
 int cpuhp_state_remove_instance (int ,int *) ;
 int perf_pmu_unregister (int *) ;
 int platform_get_drvdata (struct platform_device*) ;
 struct l2cache_pmu* to_l2cache_pmu (int ) ;

__attribute__((used)) static int l2_cache_pmu_remove(struct platform_device *pdev)
{
 struct l2cache_pmu *l2cache_pmu =
  to_l2cache_pmu(platform_get_drvdata(pdev));

 perf_pmu_unregister(&l2cache_pmu->pmu);
 cpuhp_state_remove_instance(CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE,
        &l2cache_pmu->node);
 return 0;
}
