
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cci_pmu {int model; scalar_t__ base; } ;


 scalar_t__ CCI_PMU_CNTR_BASE (int ,int) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void pmu_write_register(struct cci_pmu *cci_pmu, u32 value,
          int idx, unsigned int offset)
{
 writel_relaxed(value, cci_pmu->base +
         CCI_PMU_CNTR_BASE(cci_pmu->model, idx) + offset);
}
