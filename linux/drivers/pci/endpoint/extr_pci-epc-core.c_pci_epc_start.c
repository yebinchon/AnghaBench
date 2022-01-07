
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_epc {int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* start ) (struct pci_epc*) ;} ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct pci_epc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pci_epc*) ;

int pci_epc_start(struct pci_epc *epc)
{
 int ret;
 unsigned long flags;

 if (IS_ERR(epc))
  return -EINVAL;

 if (!epc->ops->start)
  return 0;

 spin_lock_irqsave(&epc->lock, flags);
 ret = epc->ops->start(epc);
 spin_unlock_irqrestore(&epc->lock, flags);

 return ret;
}
