
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
struct pci_epc {scalar_t__ max_functions; int lock; TYPE_1__* ops; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int (* map_addr ) (struct pci_epc*,scalar_t__,int ,int ,size_t) ;} ;


 int EINVAL ;
 scalar_t__ IS_ERR_OR_NULL (struct pci_epc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pci_epc*,scalar_t__,int ,int ,size_t) ;

int pci_epc_map_addr(struct pci_epc *epc, u8 func_no,
       phys_addr_t phys_addr, u64 pci_addr, size_t size)
{
 int ret;
 unsigned long flags;

 if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
  return -EINVAL;

 if (!epc->ops->map_addr)
  return 0;

 spin_lock_irqsave(&epc->lock, flags);
 ret = epc->ops->map_addr(epc, func_no, phys_addr, pci_addr, size);
 spin_unlock_irqrestore(&epc->lock, flags);

 return ret;
}
