
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pci_epc {scalar_t__ max_functions; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_msix ) (struct pci_epc*,scalar_t__) ;} ;


 scalar_t__ IS_ERR_OR_NULL (struct pci_epc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pci_epc*,scalar_t__) ;

int pci_epc_get_msix(struct pci_epc *epc, u8 func_no)
{
 int interrupt;
 unsigned long flags;

 if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
  return 0;

 if (!epc->ops->get_msix)
  return 0;

 spin_lock_irqsave(&epc->lock, flags);
 interrupt = epc->ops->get_msix(epc, func_no);
 spin_unlock_irqrestore(&epc->lock, flags);

 if (interrupt < 0)
  return 0;

 return interrupt + 1;
}
