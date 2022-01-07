
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct pci_epc {scalar_t__ max_functions; int lock; TYPE_1__* ops; } ;
typedef enum pci_epc_irq_type { ____Placeholder_pci_epc_irq_type } pci_epc_irq_type ;
struct TYPE_2__ {int (* raise_irq ) (struct pci_epc*,scalar_t__,int,int ) ;} ;


 int EINVAL ;
 scalar_t__ IS_ERR_OR_NULL (struct pci_epc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pci_epc*,scalar_t__,int,int ) ;

int pci_epc_raise_irq(struct pci_epc *epc, u8 func_no,
        enum pci_epc_irq_type type, u16 interrupt_num)
{
 int ret;
 unsigned long flags;

 if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
  return -EINVAL;

 if (!epc->ops->raise_irq)
  return 0;

 spin_lock_irqsave(&epc->lock, flags);
 ret = epc->ops->raise_irq(epc, func_no, type, interrupt_num);
 spin_unlock_irqrestore(&epc->lock, flags);

 return ret;
}
