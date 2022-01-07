
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cci_pmu {scalar_t__ ctrl_base; } ;


 scalar_t__ CCI_PMCR ;
 int CCI_PMCR_CEN ;
 int readl_relaxed (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void __cci_pmu_disable(struct cci_pmu *cci_pmu)
{
 u32 val;


 val = readl_relaxed(cci_pmu->ctrl_base + CCI_PMCR) & ~CCI_PMCR_CEN;
 writel(val, cci_pmu->ctrl_base + CCI_PMCR);
}
