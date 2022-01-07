
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cci_pmu {int dummy; } ;


 int CCI_PMU_CNTR_CTRL ;
 int pmu_write_register (struct cci_pmu*,int,int,int ) ;

__attribute__((used)) static void pmu_enable_counter(struct cci_pmu *cci_pmu, int idx)
{
 pmu_write_register(cci_pmu, 1, idx, CCI_PMU_CNTR_CTRL);
}
