
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pmu {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;
struct arm_ccn {TYPE_1__ dt; } ;


 scalar_t__ CCN_DT_PMCR ;
 int CCN_DT_PMCR__PMU_EN ;
 struct arm_ccn* pmu_to_arm_ccn (struct pmu*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void arm_ccn_pmu_enable(struct pmu *pmu)
{
 struct arm_ccn *ccn = pmu_to_arm_ccn(pmu);

 u32 val = readl(ccn->dt.base + CCN_DT_PMCR);
 val |= CCN_DT_PMCR__PMU_EN;
 writel(val, ccn->dt.base + CCN_DT_PMCR);
}
