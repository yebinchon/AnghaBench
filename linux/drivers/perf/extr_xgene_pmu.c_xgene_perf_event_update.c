
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct xgene_pmu_dev {scalar_t__ max_period; struct xgene_pmu* parent; } ;
struct xgene_pmu {TYPE_1__* ops; } ;
struct hw_perf_event {int prev_count; } ;
struct perf_event {int count; struct hw_perf_event hw; int pmu; } ;
struct TYPE_2__ {scalar_t__ (* read_counter ) (struct xgene_pmu_dev*,int ) ;} ;


 int GET_CNTR (struct perf_event*) ;
 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ local64_read (int *) ;
 scalar_t__ stub1 (struct xgene_pmu_dev*,int ) ;
 struct xgene_pmu_dev* to_pmu_dev (int ) ;

__attribute__((used)) static void xgene_perf_event_update(struct perf_event *event)
{
 struct xgene_pmu_dev *pmu_dev = to_pmu_dev(event->pmu);
 struct xgene_pmu *xgene_pmu = pmu_dev->parent;
 struct hw_perf_event *hw = &event->hw;
 u64 delta, prev_raw_count, new_raw_count;

again:
 prev_raw_count = local64_read(&hw->prev_count);
 new_raw_count = xgene_pmu->ops->read_counter(pmu_dev, GET_CNTR(event));

 if (local64_cmpxchg(&hw->prev_count, prev_raw_count,
       new_raw_count) != prev_raw_count)
  goto again;

 delta = (new_raw_count - prev_raw_count) & pmu_dev->max_period;

 local64_add(delta, &event->count);
}
