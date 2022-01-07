
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cci_pmu {int model; scalar_t__ base; } ;


 scalar_t__ CCI_PMU_CNTR_BASE (int ,int) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 pmu_read_register(struct cci_pmu *cci_pmu, int idx, unsigned int offset)
{
 return readl_relaxed(cci_pmu->base +
        CCI_PMU_CNTR_BASE(cci_pmu->model, idx) + offset);
}
