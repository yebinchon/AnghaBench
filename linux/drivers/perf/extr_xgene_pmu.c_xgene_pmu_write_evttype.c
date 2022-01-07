
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xgene_pmu_dev {TYPE_1__* inf; } ;
struct TYPE_2__ {scalar_t__ csr; } ;


 scalar_t__ PMU_PMEVTYPER0 ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void
xgene_pmu_write_evttype(struct xgene_pmu_dev *pmu_dev, int idx, u32 val)
{
 writel(val, pmu_dev->inf->csr + PMU_PMEVTYPER0 + (4 * idx));
}
