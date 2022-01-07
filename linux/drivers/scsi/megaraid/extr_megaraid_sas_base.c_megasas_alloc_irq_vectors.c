
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct megasas_instance {scalar_t__ perf_mode; int msix_vectors; int low_latency_index_start; scalar_t__ smp_affinity_enable; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ MR_BALANCED_PERF_MODE ;
 scalar_t__ MR_LATENCY_PERF_MODE ;
 int __megasas_alloc_irq_vectors (struct megasas_instance*) ;
 int dev_info (int *,char*,int,int) ;
 int megasas_set_high_iops_queue_affinity_hint (struct megasas_instance*) ;
 int min (unsigned int,int) ;
 unsigned int num_online_cpus () ;
 int pci_free_irq_vectors (TYPE_1__*) ;

__attribute__((used)) static void
megasas_alloc_irq_vectors(struct megasas_instance *instance)
{
 int i;
 unsigned int num_msix_req;

 i = __megasas_alloc_irq_vectors(instance);

 if ((instance->perf_mode == MR_BALANCED_PERF_MODE) &&
     (i != instance->msix_vectors)) {
  if (instance->msix_vectors)
   pci_free_irq_vectors(instance->pdev);

  instance->perf_mode = MR_LATENCY_PERF_MODE;
  instance->low_latency_index_start = 1;
  num_msix_req = num_online_cpus() + instance->low_latency_index_start;

  instance->msix_vectors = min(num_msix_req,
    instance->msix_vectors);

  i = __megasas_alloc_irq_vectors(instance);

 }

 dev_info(&instance->pdev->dev,
  "requested/available msix %d/%d\n", instance->msix_vectors, i);

 if (i > 0)
  instance->msix_vectors = i;
 else
  instance->msix_vectors = 0;

 if (instance->smp_affinity_enable)
  megasas_set_high_iops_queue_affinity_hint(instance);
}
