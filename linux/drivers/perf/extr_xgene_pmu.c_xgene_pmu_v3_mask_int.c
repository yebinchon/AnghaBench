
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_pmu {scalar_t__ pcppmu_csr; } ;


 scalar_t__ PCPPMU_INTMASK_REG ;
 int PCPPMU_V3_INTENMASK ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void xgene_pmu_v3_mask_int(struct xgene_pmu *xgene_pmu)
{
 writel(PCPPMU_V3_INTENMASK, xgene_pmu->pcppmu_csr + PCPPMU_INTMASK_REG);
}
