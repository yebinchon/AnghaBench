
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct arm_pmu {int (* handle_irq ) (struct arm_pmu*) ;} ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int perf_sample_event_took (scalar_t__) ;
 scalar_t__ sched_clock () ;
 int stub1 (struct arm_pmu*) ;

__attribute__((used)) static irqreturn_t armpmu_dispatch_irq(int irq, void *dev)
{
 struct arm_pmu *armpmu;
 int ret;
 u64 start_clock, finish_clock;







 armpmu = *(void **)dev;
 if (WARN_ON_ONCE(!armpmu))
  return IRQ_NONE;

 start_clock = sched_clock();
 ret = armpmu->handle_irq(armpmu);
 finish_clock = sched_clock();

 perf_sample_event_took(finish_clock - start_clock);
 return ret;
}
