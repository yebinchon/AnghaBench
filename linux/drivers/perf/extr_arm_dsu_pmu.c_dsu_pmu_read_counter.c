
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int idx; } ;
struct perf_event {TYPE_2__* pmu; TYPE_1__ hw; } ;
struct dsu_pmu {int pmu_lock; int associated_cpus; } ;
struct TYPE_4__ {int dev; } ;


 int DSU_PMU_IDX_CYCLE_COUNTER ;
 scalar_t__ WARN_ON (int) ;
 int __dsu_pmu_read_counter (int) ;
 int __dsu_pmu_read_pmccntr () ;
 int cpumask_test_cpu (int ,int *) ;
 int dev_err (int ,char*,int) ;
 int dsu_pmu_counter_valid (struct dsu_pmu*,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int smp_processor_id () ;
 struct dsu_pmu* to_dsu_pmu (TYPE_2__*) ;

__attribute__((used)) static inline u64 dsu_pmu_read_counter(struct perf_event *event)
{
 u64 val;
 unsigned long flags;
 struct dsu_pmu *dsu_pmu = to_dsu_pmu(event->pmu);
 int idx = event->hw.idx;

 if (WARN_ON(!cpumask_test_cpu(smp_processor_id(),
     &dsu_pmu->associated_cpus)))
  return 0;

 if (!dsu_pmu_counter_valid(dsu_pmu, idx)) {
  dev_err(event->pmu->dev,
   "Trying reading invalid counter %d\n", idx);
  return 0;
 }

 raw_spin_lock_irqsave(&dsu_pmu->pmu_lock, flags);
 if (idx == DSU_PMU_IDX_CYCLE_COUNTER)
  val = __dsu_pmu_read_pmccntr();
 else
  val = __dsu_pmu_read_counter(idx);
 raw_spin_unlock_irqrestore(&dsu_pmu->pmu_lock, flags);

 return val;
}
