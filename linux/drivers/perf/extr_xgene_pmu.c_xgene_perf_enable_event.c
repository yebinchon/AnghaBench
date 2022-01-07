
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xgene_pmu_dev {TYPE_1__* inf; struct xgene_pmu* parent; } ;
struct xgene_pmu {TYPE_2__* ops; } ;
struct perf_event {int pmu; } ;
struct TYPE_4__ {int (* enable_counter_int ) (struct xgene_pmu_dev*,int ) ;int (* enable_counter ) (struct xgene_pmu_dev*,int ) ;int (* write_agent1msk ) (struct xgene_pmu_dev*,int ) ;int (* write_agentmsk ) (struct xgene_pmu_dev*,int ) ;int (* write_evttype ) (struct xgene_pmu_dev*,int ,int ) ;} ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ GET_AGENT1ID (struct perf_event*) ;
 scalar_t__ GET_AGENTID (struct perf_event*) ;
 int GET_CNTR (struct perf_event*) ;
 int GET_EVENTID (struct perf_event*) ;
 scalar_t__ PMU_TYPE_IOB ;
 int stub1 (struct xgene_pmu_dev*,int ,int ) ;
 int stub2 (struct xgene_pmu_dev*,int ) ;
 int stub3 (struct xgene_pmu_dev*,int ) ;
 int stub4 (struct xgene_pmu_dev*,int ) ;
 int stub5 (struct xgene_pmu_dev*,int ) ;
 struct xgene_pmu_dev* to_pmu_dev (int ) ;

__attribute__((used)) static void xgene_perf_enable_event(struct perf_event *event)
{
 struct xgene_pmu_dev *pmu_dev = to_pmu_dev(event->pmu);
 struct xgene_pmu *xgene_pmu = pmu_dev->parent;

 xgene_pmu->ops->write_evttype(pmu_dev, GET_CNTR(event),
          GET_EVENTID(event));
 xgene_pmu->ops->write_agentmsk(pmu_dev, ~((u32)GET_AGENTID(event)));
 if (pmu_dev->inf->type == PMU_TYPE_IOB)
  xgene_pmu->ops->write_agent1msk(pmu_dev,
      ~((u32)GET_AGENT1ID(event)));

 xgene_pmu->ops->enable_counter(pmu_dev, GET_CNTR(event));
 xgene_pmu->ops->enable_counter_int(pmu_dev, GET_CNTR(event));
}
