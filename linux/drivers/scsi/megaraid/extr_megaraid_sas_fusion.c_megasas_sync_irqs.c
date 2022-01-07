
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct megasas_irq_context {int irq_poll_scheduled; int os_irq; int irqpoll; } ;
struct megasas_instance {scalar_t__ msix_vectors; struct megasas_irq_context* irq_context; int pdev; } ;


 int enable_irq (int ) ;
 int irq_poll_disable (int *) ;
 int pci_irq_vector (int ,size_t) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void megasas_sync_irqs(unsigned long instance_addr)
{
 u32 count, i;
 struct megasas_instance *instance =
  (struct megasas_instance *)instance_addr;
 struct megasas_irq_context *irq_ctx;

 count = instance->msix_vectors > 0 ? instance->msix_vectors : 1;

 for (i = 0; i < count; i++) {
  synchronize_irq(pci_irq_vector(instance->pdev, i));
  irq_ctx = &instance->irq_context[i];
  irq_poll_disable(&irq_ctx->irqpoll);
  if (irq_ctx->irq_poll_scheduled) {
   irq_ctx->irq_poll_scheduled = 0;
   enable_irq(irq_ctx->os_irq);
  }
 }
}
