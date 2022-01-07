
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pmu {int dummy; } ;
struct TYPE_2__ {int used_mask; } ;
struct dsu_pmu {int pmu_lock; TYPE_1__ hw_events; } ;


 int CLUSTERPMCR_E ;
 int DSU_PMU_MAX_HW_CNTRS ;
 int __dsu_pmu_read_pmcr () ;
 int __dsu_pmu_write_pmcr (int ) ;
 scalar_t__ bitmap_empty (int ,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct dsu_pmu* to_dsu_pmu (struct pmu*) ;

__attribute__((used)) static void dsu_pmu_enable(struct pmu *pmu)
{
 u32 pmcr;
 unsigned long flags;
 struct dsu_pmu *dsu_pmu = to_dsu_pmu(pmu);


 if (bitmap_empty(dsu_pmu->hw_events.used_mask, DSU_PMU_MAX_HW_CNTRS))
  return;

 raw_spin_lock_irqsave(&dsu_pmu->pmu_lock, flags);
 pmcr = __dsu_pmu_read_pmcr();
 pmcr |= CLUSTERPMCR_E;
 __dsu_pmu_write_pmcr(pmcr);
 raw_spin_unlock_irqrestore(&dsu_pmu->pmu_lock, flags);
}
