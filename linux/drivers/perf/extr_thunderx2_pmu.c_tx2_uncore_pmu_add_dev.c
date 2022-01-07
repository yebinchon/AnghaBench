
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct TYPE_4__ {int function; } ;
struct tx2_uncore_pmu {int cpu; int name; TYPE_1__ pmu; int dev; int entry; int hpnode; TYPE_2__ hrtimer; int node; } ;


 int CLOCK_MONOTONIC ;
 int CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE ;
 int ENODEV ;
 int HRTIMER_MODE_REL ;
 int cpu_online_mask ;
 int cpuhp_state_add_instance (int ,int *) ;
 int cpumask_any_and (int ,int ) ;
 int cpumask_of_node (int ) ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,int) ;
 int hrtimer_init (TYPE_2__*,int ,int ) ;
 int list_add (int *,int *) ;
 int tx2_hrtimer_callback ;
 int tx2_pmus ;
 int tx2_uncore_pmu_register (struct tx2_uncore_pmu*) ;

__attribute__((used)) static int tx2_uncore_pmu_add_dev(struct tx2_uncore_pmu *tx2_pmu)
{
 int ret, cpu;

 cpu = cpumask_any_and(cpumask_of_node(tx2_pmu->node),
   cpu_online_mask);

 tx2_pmu->cpu = cpu;
 hrtimer_init(&tx2_pmu->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 tx2_pmu->hrtimer.function = tx2_hrtimer_callback;

 ret = tx2_uncore_pmu_register(tx2_pmu);
 if (ret) {
  dev_err(tx2_pmu->dev, "%s PMU: Failed to init driver\n",
    tx2_pmu->name);
  return -ENODEV;
 }


 ret = cpuhp_state_add_instance(
   CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE,
   &tx2_pmu->hpnode);
 if (ret) {
  dev_err(tx2_pmu->dev, "Error %d registering hotplug", ret);
  return ret;
 }


 list_add(&tx2_pmu->entry, &tx2_pmus);

 dev_dbg(tx2_pmu->dev, "%s PMU UNCORE registered\n",
   tx2_pmu->pmu.name);
 return ret;
}
