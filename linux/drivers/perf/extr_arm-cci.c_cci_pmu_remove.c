
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int pmu; } ;


 int CPUHP_AP_PERF_ARM_CCI_ONLINE ;
 int cpuhp_remove_state (int ) ;
 TYPE_1__* g_cci_pmu ;
 int perf_pmu_unregister (int *) ;

__attribute__((used)) static int cci_pmu_remove(struct platform_device *pdev)
{
 if (!g_cci_pmu)
  return 0;

 cpuhp_remove_state(CPUHP_AP_PERF_ARM_CCI_ONLINE);
 perf_pmu_unregister(&g_cci_pmu->pmu);
 g_cci_pmu = ((void*)0);

 return 0;
}
