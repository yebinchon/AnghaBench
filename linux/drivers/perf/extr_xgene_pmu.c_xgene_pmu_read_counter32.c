
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct xgene_pmu_dev {TYPE_1__* inf; } ;
struct TYPE_2__ {scalar_t__ csr; } ;


 scalar_t__ PMU_PMEVCNTR0 ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u64 xgene_pmu_read_counter32(struct xgene_pmu_dev *pmu_dev,
        int idx)
{
 return readl(pmu_dev->inf->csr + PMU_PMEVCNTR0 + (4 * idx));
}
