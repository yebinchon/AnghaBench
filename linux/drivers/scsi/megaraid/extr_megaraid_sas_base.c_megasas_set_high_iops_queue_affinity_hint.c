
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct megasas_instance {scalar_t__ perf_mode; int low_latency_index_start; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ MR_BALANCED_PERF_MODE ;
 int cpumask_of_node (int) ;
 int dev_to_node (int *) ;
 int irq_set_affinity_hint (int ,int ) ;
 int pci_irq_vector (TYPE_1__*,int) ;

__attribute__((used)) static inline void
megasas_set_high_iops_queue_affinity_hint(struct megasas_instance *instance)
{
 int i;
 int local_numa_node;

 if (instance->perf_mode == MR_BALANCED_PERF_MODE) {
  local_numa_node = dev_to_node(&instance->pdev->dev);

  for (i = 0; i < instance->low_latency_index_start; i++)
   irq_set_affinity_hint(pci_irq_vector(instance->pdev, i),
    cpumask_of_node(local_numa_node));
 }
}
