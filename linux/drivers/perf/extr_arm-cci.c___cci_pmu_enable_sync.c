
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cci_pmu {int dummy; } ;


 int __cci_pmu_enable_nosync (struct cci_pmu*) ;
 int cci_pmu_sync_counters (struct cci_pmu*) ;

__attribute__((used)) static void __cci_pmu_enable_sync(struct cci_pmu *cci_pmu)
{
 cci_pmu_sync_counters(cci_pmu);
 __cci_pmu_enable_nosync(cci_pmu);
}
