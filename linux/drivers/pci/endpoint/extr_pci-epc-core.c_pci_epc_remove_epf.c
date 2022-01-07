
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epf {int * epc; int list; } ;
struct pci_epc {int lock; } ;


 scalar_t__ IS_ERR (struct pci_epc*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void pci_epc_remove_epf(struct pci_epc *epc, struct pci_epf *epf)
{
 unsigned long flags;

 if (!epc || IS_ERR(epc) || !epf)
  return;

 spin_lock_irqsave(&epc->lock, flags);
 list_del(&epf->list);
 epf->epc = ((void*)0);
 spin_unlock_irqrestore(&epc->lock, flags);
}
