
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_ops {int dummy; } ;
struct pci_bus_ops {int list; } ;
struct pci_bus {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct pci_ops aer_inj_pci_ops ;
 int inject_lock ;
 int kfree (struct pci_bus_ops*) ;
 struct pci_bus_ops* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int pci_bus_ops_init (struct pci_bus_ops*,struct pci_bus*,struct pci_ops*) ;
 int pci_bus_ops_list ;
 struct pci_ops* pci_bus_set_ops (struct pci_bus*,struct pci_ops*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pci_bus_set_aer_ops(struct pci_bus *bus)
{
 struct pci_ops *ops;
 struct pci_bus_ops *bus_ops;
 unsigned long flags;

 bus_ops = kmalloc(sizeof(*bus_ops), GFP_KERNEL);
 if (!bus_ops)
  return -ENOMEM;
 ops = pci_bus_set_ops(bus, &aer_inj_pci_ops);
 spin_lock_irqsave(&inject_lock, flags);
 if (ops == &aer_inj_pci_ops)
  goto out;
 pci_bus_ops_init(bus_ops, bus, ops);
 list_add(&bus_ops->list, &pci_bus_ops_list);
 bus_ops = ((void*)0);
out:
 spin_unlock_irqrestore(&inject_lock, flags);
 kfree(bus_ops);
 return 0;
}
