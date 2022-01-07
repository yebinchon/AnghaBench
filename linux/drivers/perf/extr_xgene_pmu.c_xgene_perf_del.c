
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_pmu_dev {int ** pmu_counter_event; } ;
struct hw_perf_event {size_t idx; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;


 int GET_CNTR (struct perf_event*) ;
 int PERF_EF_UPDATE ;
 int clear_avail_cntr (struct xgene_pmu_dev*,int ) ;
 int perf_event_update_userpage (struct perf_event*) ;
 struct xgene_pmu_dev* to_pmu_dev (int ) ;
 int xgene_perf_stop (struct perf_event*,int ) ;

__attribute__((used)) static void xgene_perf_del(struct perf_event *event, int flags)
{
 struct xgene_pmu_dev *pmu_dev = to_pmu_dev(event->pmu);
 struct hw_perf_event *hw = &event->hw;

 xgene_perf_stop(event, PERF_EF_UPDATE);


 clear_avail_cntr(pmu_dev, GET_CNTR(event));

 perf_event_update_userpage(event);
 pmu_dev->pmu_counter_event[hw->idx] = ((void*)0);
}
