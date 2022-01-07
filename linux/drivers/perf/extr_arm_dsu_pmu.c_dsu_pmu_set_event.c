
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int idx; int config_base; } ;
struct perf_event {TYPE_2__ hw; TYPE_1__* pmu; } ;
struct dsu_pmu {int pmu_lock; } ;
struct TYPE_3__ {int dev; } ;


 int __dsu_pmu_set_event (int,int ) ;
 int dev_err (int ,char*,int) ;
 int dsu_pmu_counter_valid (struct dsu_pmu*,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void dsu_pmu_set_event(struct dsu_pmu *dsu_pmu,
     struct perf_event *event)
{
 int idx = event->hw.idx;
 unsigned long flags;

 if (!dsu_pmu_counter_valid(dsu_pmu, idx)) {
  dev_err(event->pmu->dev,
   "Trying to set invalid counter %d\n", idx);
  return;
 }

 raw_spin_lock_irqsave(&dsu_pmu->pmu_lock, flags);
 __dsu_pmu_set_event(idx, event->hw.config_base);
 raw_spin_unlock_irqrestore(&dsu_pmu->pmu_lock, flags);
}
