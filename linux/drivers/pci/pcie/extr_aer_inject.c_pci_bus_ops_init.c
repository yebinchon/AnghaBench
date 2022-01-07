
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_ops {int dummy; } ;
struct pci_bus_ops {struct pci_ops* ops; struct pci_bus* bus; int list; } ;
struct pci_bus {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void pci_bus_ops_init(struct pci_bus_ops *bus_ops,
        struct pci_bus *bus,
        struct pci_ops *ops)
{
 INIT_LIST_HEAD(&bus_ops->list);
 bus_ops->bus = bus;
 bus_ops->ops = ops;
}
