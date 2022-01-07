
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct xgene_pmu_dev {struct xgene_pmu* parent; } ;
struct xgene_pmu {TYPE_1__* ops; } ;
struct hw_perf_event {int idx; int prev_count; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct TYPE_2__ {int (* write_counter ) (struct xgene_pmu_dev*,int ,unsigned long long) ;} ;


 int local64_set (int *,unsigned long long) ;
 int stub1 (struct xgene_pmu_dev*,int ,unsigned long long) ;
 struct xgene_pmu_dev* to_pmu_dev (int ) ;

__attribute__((used)) static void xgene_perf_event_set_period(struct perf_event *event)
{
 struct xgene_pmu_dev *pmu_dev = to_pmu_dev(event->pmu);
 struct xgene_pmu *xgene_pmu = pmu_dev->parent;
 struct hw_perf_event *hw = &event->hw;







 u64 val = 1ULL << 31;

 local64_set(&hw->prev_count, val);
 xgene_pmu->ops->write_counter(pmu_dev, hw->idx, val);
}
