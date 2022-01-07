
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epf {int func_no; int list; struct pci_epc* epc; } ;
struct pci_epc {int max_functions; int lock; int pci_epf; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct pci_epc*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf)
{
 unsigned long flags;

 if (epf->epc)
  return -EBUSY;

 if (IS_ERR(epc))
  return -EINVAL;

 if (epf->func_no > epc->max_functions - 1)
  return -EINVAL;

 epf->epc = epc;

 spin_lock_irqsave(&epc->lock, flags);
 list_add_tail(&epf->list, &epc->pci_epf);
 spin_unlock_irqrestore(&epc->lock, flags);

 return 0;
}
