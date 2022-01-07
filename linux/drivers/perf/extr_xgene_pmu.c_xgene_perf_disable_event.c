
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_pmu_dev {struct xgene_pmu* parent; } ;
struct xgene_pmu {TYPE_1__* ops; } ;
struct perf_event {int pmu; } ;
struct TYPE_2__ {int (* disable_counter_int ) (struct xgene_pmu_dev*,int ) ;int (* disable_counter ) (struct xgene_pmu_dev*,int ) ;} ;


 int GET_CNTR (struct perf_event*) ;
 int stub1 (struct xgene_pmu_dev*,int ) ;
 int stub2 (struct xgene_pmu_dev*,int ) ;
 struct xgene_pmu_dev* to_pmu_dev (int ) ;

__attribute__((used)) static void xgene_perf_disable_event(struct perf_event *event)
{
 struct xgene_pmu_dev *pmu_dev = to_pmu_dev(event->pmu);
 struct xgene_pmu *xgene_pmu = pmu_dev->parent;

 xgene_pmu->ops->disable_counter(pmu_dev, GET_CNTR(event));
 xgene_pmu->ops->disable_counter_int(pmu_dev, GET_CNTR(event));
}
