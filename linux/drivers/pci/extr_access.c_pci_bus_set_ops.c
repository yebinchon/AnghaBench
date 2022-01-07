
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_ops {int dummy; } ;
struct pci_bus {struct pci_ops* ops; } ;


 int pci_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

struct pci_ops *pci_bus_set_ops(struct pci_bus *bus, struct pci_ops *ops)
{
 struct pci_ops *old_ops;
 unsigned long flags;

 raw_spin_lock_irqsave(&pci_lock, flags);
 old_ops = bus->ops;
 bus->ops = ops;
 raw_spin_unlock_irqrestore(&pci_lock, flags);
 return old_ops;
}
