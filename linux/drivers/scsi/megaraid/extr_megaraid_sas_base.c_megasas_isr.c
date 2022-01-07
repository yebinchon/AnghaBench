
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct megasas_irq_context {struct megasas_instance* instance; } ;
struct megasas_instance {int hba_lock; int fw_reset_no_pci_access; } ;
typedef int irqreturn_t ;


 int DID_OK ;
 int IRQ_HANDLED ;
 scalar_t__ atomic_read (int *) ;
 int megasas_deplete_reply_queue (struct megasas_instance*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t megasas_isr(int irq, void *devp)
{
 struct megasas_irq_context *irq_context = devp;
 struct megasas_instance *instance = irq_context->instance;
 unsigned long flags;
 irqreturn_t rc;

 if (atomic_read(&instance->fw_reset_no_pci_access))
  return IRQ_HANDLED;

 spin_lock_irqsave(&instance->hba_lock, flags);
 rc = megasas_deplete_reply_queue(instance, DID_OK);
 spin_unlock_irqrestore(&instance->hba_lock, flags);

 return rc;
}
