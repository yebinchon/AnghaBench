
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmu {int dummy; } ;
struct dsu_pmu {int pmu_lock; } ;


 int CLUSTERPMCR_E ;
 int __dsu_pmu_read_pmcr () ;
 int __dsu_pmu_write_pmcr (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct dsu_pmu* to_dsu_pmu (struct pmu*) ;

__attribute__((used)) static void dsu_pmu_disable(struct pmu *pmu)
{
 u32 pmcr;
 unsigned long flags;
 struct dsu_pmu *dsu_pmu = to_dsu_pmu(pmu);

 raw_spin_lock_irqsave(&dsu_pmu->pmu_lock, flags);
 pmcr = __dsu_pmu_read_pmcr();
 pmcr &= ~CLUSTERPMCR_E;
 __dsu_pmu_write_pmcr(pmcr);
 raw_spin_unlock_irqrestore(&dsu_pmu->pmu_lock, flags);
}
