
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pci_epf_bar {scalar_t__ barno; int flags; } ;
struct pci_epc {scalar_t__ max_functions; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* clear_bar ) (struct pci_epc*,scalar_t__,struct pci_epf_bar*) ;} ;


 scalar_t__ BAR_5 ;
 scalar_t__ IS_ERR_OR_NULL (struct pci_epc*) ;
 int PCI_BASE_ADDRESS_MEM_TYPE_64 ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pci_epc*,scalar_t__,struct pci_epf_bar*) ;

void pci_epc_clear_bar(struct pci_epc *epc, u8 func_no,
         struct pci_epf_bar *epf_bar)
{
 unsigned long flags;

 if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions ||
     (epf_bar->barno == BAR_5 &&
      epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64))
  return;

 if (!epc->ops->clear_bar)
  return;

 spin_lock_irqsave(&epc->lock, flags);
 epc->ops->clear_bar(epc, func_no, epf_bar);
 spin_unlock_irqrestore(&epc->lock, flags);
}
