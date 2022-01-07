
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pci_epf_bar {int flags; scalar_t__ barno; int size; } ;
struct pci_epc {scalar_t__ max_functions; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_bar ) (struct pci_epc*,scalar_t__,struct pci_epf_bar*) ;} ;


 scalar_t__ BAR_5 ;
 int EINVAL ;
 scalar_t__ IS_ERR_OR_NULL (struct pci_epc*) ;
 int PCI_BASE_ADDRESS_IO_MASK ;
 int PCI_BASE_ADDRESS_MEM_TYPE_64 ;
 int PCI_BASE_ADDRESS_SPACE_IO ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pci_epc*,scalar_t__,struct pci_epf_bar*) ;
 scalar_t__ upper_32_bits (int ) ;

int pci_epc_set_bar(struct pci_epc *epc, u8 func_no,
      struct pci_epf_bar *epf_bar)
{
 int ret;
 unsigned long irq_flags;
 int flags = epf_bar->flags;

 if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions ||
     (epf_bar->barno == BAR_5 &&
      flags & PCI_BASE_ADDRESS_MEM_TYPE_64) ||
     (flags & PCI_BASE_ADDRESS_SPACE_IO &&
      flags & PCI_BASE_ADDRESS_IO_MASK) ||
     (upper_32_bits(epf_bar->size) &&
      !(flags & PCI_BASE_ADDRESS_MEM_TYPE_64)))
  return -EINVAL;

 if (!epc->ops->set_bar)
  return 0;

 spin_lock_irqsave(&epc->lock, irq_flags);
 ret = epc->ops->set_bar(epc, func_no, epf_bar);
 spin_unlock_irqrestore(&epc->lock, irq_flags);

 return ret;
}
