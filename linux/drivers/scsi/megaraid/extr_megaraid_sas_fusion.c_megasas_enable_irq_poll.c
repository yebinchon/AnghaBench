
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct megasas_irq_context {int irqpoll; } ;
struct megasas_instance {scalar_t__ msix_vectors; struct megasas_irq_context* irq_context; } ;


 int irq_poll_enable (int *) ;

__attribute__((used)) static void megasas_enable_irq_poll(struct megasas_instance *instance)
{
 u32 count, i;
 struct megasas_irq_context *irq_ctx;

 count = instance->msix_vectors > 0 ? instance->msix_vectors : 1;

 for (i = 0; i < count; i++) {
  irq_ctx = &instance->irq_context[i];
  irq_poll_enable(&irq_ctx->irqpoll);
 }
}
