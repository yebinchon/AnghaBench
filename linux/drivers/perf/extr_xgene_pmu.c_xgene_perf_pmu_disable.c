
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_pmu_dev {struct xgene_pmu* parent; } ;
struct xgene_pmu {TYPE_1__* ops; } ;
struct pmu {int dummy; } ;
struct TYPE_2__ {int (* stop_counters ) (struct xgene_pmu_dev*) ;} ;


 int stub1 (struct xgene_pmu_dev*) ;
 struct xgene_pmu_dev* to_pmu_dev (struct pmu*) ;

__attribute__((used)) static void xgene_perf_pmu_disable(struct pmu *pmu)
{
 struct xgene_pmu_dev *pmu_dev = to_pmu_dev(pmu);
 struct xgene_pmu *xgene_pmu = pmu_dev->parent;

 xgene_pmu->ops->stop_counters(pmu_dev);
}
