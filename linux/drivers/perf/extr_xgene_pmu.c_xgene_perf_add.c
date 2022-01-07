
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_pmu_dev {struct perf_event** pmu_counter_event; } ;
struct hw_perf_event {int state; size_t idx; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;


 int EAGAIN ;
 int PERF_EF_RELOAD ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 size_t get_next_avail_cntr (struct xgene_pmu_dev*) ;
 struct xgene_pmu_dev* to_pmu_dev (int ) ;
 int xgene_perf_start (struct perf_event*,int ) ;

__attribute__((used)) static int xgene_perf_add(struct perf_event *event, int flags)
{
 struct xgene_pmu_dev *pmu_dev = to_pmu_dev(event->pmu);
 struct hw_perf_event *hw = &event->hw;

 hw->state = PERF_HES_UPTODATE | PERF_HES_STOPPED;


 hw->idx = get_next_avail_cntr(pmu_dev);
 if (hw->idx < 0)
  return -EAGAIN;


 pmu_dev->pmu_counter_event[hw->idx] = event;

 if (flags & PERF_EF_START)
  xgene_perf_start(event, PERF_EF_RELOAD);

 return 0;
}
