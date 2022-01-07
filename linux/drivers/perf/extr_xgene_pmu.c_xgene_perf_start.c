
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct xgene_pmu_dev {struct xgene_pmu* parent; } ;
struct xgene_pmu {TYPE_1__* ops; } ;
struct hw_perf_event {int state; int prev_count; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct TYPE_2__ {int (* write_counter ) (struct xgene_pmu_dev*,int ,int ) ;} ;


 int GET_CNTR (struct perf_event*) ;
 int PERF_EF_RELOAD ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int local64_read (int *) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int stub1 (struct xgene_pmu_dev*,int ,int ) ;
 struct xgene_pmu_dev* to_pmu_dev (int ) ;
 int xgene_perf_enable_event (struct perf_event*) ;
 int xgene_perf_event_set_period (struct perf_event*) ;

__attribute__((used)) static void xgene_perf_start(struct perf_event *event, int flags)
{
 struct xgene_pmu_dev *pmu_dev = to_pmu_dev(event->pmu);
 struct xgene_pmu *xgene_pmu = pmu_dev->parent;
 struct hw_perf_event *hw = &event->hw;

 if (WARN_ON_ONCE(!(hw->state & PERF_HES_STOPPED)))
  return;

 WARN_ON_ONCE(!(hw->state & PERF_HES_UPTODATE));
 hw->state = 0;

 xgene_perf_event_set_period(event);

 if (flags & PERF_EF_RELOAD) {
  u64 prev_raw_count = local64_read(&hw->prev_count);

  xgene_pmu->ops->write_counter(pmu_dev, GET_CNTR(event),
           prev_raw_count);
 }

 xgene_perf_enable_event(event);
 perf_event_update_userpage(event);
}
