
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct megasas_irq_context {int irq_poll_scheduled; int irqpoll; int os_irq; } ;
struct megasas_instance {scalar_t__ msix_vectors; int threshold_reply_count; int pdev; struct megasas_irq_context* irq_context; } ;


 int irq_poll_init (int *,int ,int ) ;
 int megasas_irqpoll ;
 int pci_irq_vector (int ,size_t) ;

__attribute__((used)) static
void megasas_setup_irq_poll(struct megasas_instance *instance)
{
 struct megasas_irq_context *irq_ctx;
 u32 count, i;

 count = instance->msix_vectors > 0 ? instance->msix_vectors : 1;


 for (i = 0; i < count; i++) {
  irq_ctx = &instance->irq_context[i];
  irq_ctx->os_irq = pci_irq_vector(instance->pdev, i);
  irq_ctx->irq_poll_scheduled = 0;
  irq_poll_init(&irq_ctx->irqpoll,
         instance->threshold_reply_count,
         megasas_irqpoll);
 }
}
