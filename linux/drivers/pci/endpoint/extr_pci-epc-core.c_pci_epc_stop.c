
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_epc {int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* stop ) (struct pci_epc*) ;} ;


 scalar_t__ IS_ERR (struct pci_epc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pci_epc*) ;

void pci_epc_stop(struct pci_epc *epc)
{
 unsigned long flags;

 if (IS_ERR(epc) || !epc->ops->stop)
  return;

 spin_lock_irqsave(&epc->lock, flags);
 epc->ops->stop(epc);
 spin_unlock_irqrestore(&epc->lock, flags);
}
