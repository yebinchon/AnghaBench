
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct megasas_irq_context {int MSIxIndex; scalar_t__ irq_poll_scheduled; struct megasas_instance* instance; } ;
struct megasas_instance {TYPE_1__* instancet; int reset_flags; int msix_vectors; scalar_t__ mask_interrupts; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* clear_intr ) (struct megasas_instance*) ;} ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MEGASAS_FUSION_IN_RESET ;
 scalar_t__ complete_cmd_fusion (struct megasas_instance*,int ,struct megasas_irq_context*) ;
 int stub1 (struct megasas_instance*) ;
 int stub2 (struct megasas_instance*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t megasas_isr_fusion(int irq, void *devp)
{
 struct megasas_irq_context *irq_context = devp;
 struct megasas_instance *instance = irq_context->instance;
 u32 mfiStatus;

 if (instance->mask_interrupts)
  return IRQ_NONE;






 if (!instance->msix_vectors) {
  mfiStatus = instance->instancet->clear_intr(instance);
  if (!mfiStatus)
   return IRQ_NONE;
 }


 if (test_bit(MEGASAS_FUSION_IN_RESET, &instance->reset_flags)) {
  instance->instancet->clear_intr(instance);
  return IRQ_HANDLED;
 }

 return complete_cmd_fusion(instance, irq_context->MSIxIndex, irq_context)
   ? IRQ_HANDLED : IRQ_NONE;
}
