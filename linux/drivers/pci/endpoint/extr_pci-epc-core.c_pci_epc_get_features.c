
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pci_epc_features {int dummy; } ;
struct pci_epc {scalar_t__ max_functions; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {struct pci_epc_features* (* get_features ) (struct pci_epc*,scalar_t__) ;} ;


 scalar_t__ IS_ERR_OR_NULL (struct pci_epc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pci_epc_features* stub1 (struct pci_epc*,scalar_t__) ;

const struct pci_epc_features *pci_epc_get_features(struct pci_epc *epc,
          u8 func_no)
{
 const struct pci_epc_features *epc_features;
 unsigned long flags;

 if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
  return ((void*)0);

 if (!epc->ops->get_features)
  return ((void*)0);

 spin_lock_irqsave(&epc->lock, flags);
 epc_features = epc->ops->get_features(epc, func_no);
 spin_unlock_irqrestore(&epc->lock, flags);

 return epc_features;
}
