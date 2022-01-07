
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pci_epf_header {int dummy; } ;
struct pci_epc {scalar_t__ max_functions; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write_header ) (struct pci_epc*,scalar_t__,struct pci_epf_header*) ;} ;


 int EINVAL ;
 scalar_t__ IS_ERR_OR_NULL (struct pci_epc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pci_epc*,scalar_t__,struct pci_epf_header*) ;

int pci_epc_write_header(struct pci_epc *epc, u8 func_no,
    struct pci_epf_header *header)
{
 int ret;
 unsigned long flags;

 if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
  return -EINVAL;

 if (!epc->ops->write_header)
  return 0;

 spin_lock_irqsave(&epc->lock, flags);
 ret = epc->ops->write_header(epc, func_no, header);
 spin_unlock_irqrestore(&epc->lock, flags);

 return ret;
}
