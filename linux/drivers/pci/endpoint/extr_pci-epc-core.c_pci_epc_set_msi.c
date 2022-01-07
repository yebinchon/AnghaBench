
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pci_epc {scalar_t__ max_functions; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_msi ) (struct pci_epc*,scalar_t__,scalar_t__) ;} ;


 int EINVAL ;
 scalar_t__ IS_ERR_OR_NULL (struct pci_epc*) ;
 scalar_t__ order_base_2 (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pci_epc*,scalar_t__,scalar_t__) ;

int pci_epc_set_msi(struct pci_epc *epc, u8 func_no, u8 interrupts)
{
 int ret;
 u8 encode_int;
 unsigned long flags;

 if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions ||
     interrupts > 32)
  return -EINVAL;

 if (!epc->ops->set_msi)
  return 0;

 encode_int = order_base_2(interrupts);

 spin_lock_irqsave(&epc->lock, flags);
 ret = epc->ops->set_msi(epc, func_no, encode_int);
 spin_unlock_irqrestore(&epc->lock, flags);

 return ret;
}
