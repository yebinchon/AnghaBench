
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_pmu_dev {int max_counters; int cntr_assign_mask; struct xgene_pmu* parent; } ;
struct xgene_pmu {TYPE_1__* ops; } ;
struct pmu {int dummy; } ;
struct TYPE_2__ {int (* start_counters ) (struct xgene_pmu_dev*) ;} ;


 int bitmap_weight (int ,int ) ;
 int stub1 (struct xgene_pmu_dev*) ;
 struct xgene_pmu_dev* to_pmu_dev (struct pmu*) ;

__attribute__((used)) static void xgene_perf_pmu_enable(struct pmu *pmu)
{
 struct xgene_pmu_dev *pmu_dev = to_pmu_dev(pmu);
 struct xgene_pmu *xgene_pmu = pmu_dev->parent;
 int enabled = bitmap_weight(pmu_dev->cntr_assign_mask,
   pmu_dev->max_counters);

 if (!enabled)
  return;

 xgene_pmu->ops->start_counters(pmu_dev);
}
