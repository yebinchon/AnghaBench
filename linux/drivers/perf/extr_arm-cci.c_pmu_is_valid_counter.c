
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cci_pmu {int dummy; } ;


 int CCI_PMU_CNTR_LAST (struct cci_pmu*) ;

__attribute__((used)) static int pmu_is_valid_counter(struct cci_pmu *cci_pmu, int idx)
{
 return 0 <= idx && idx <= CCI_PMU_CNTR_LAST(cci_pmu);
}
