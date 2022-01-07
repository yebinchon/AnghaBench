
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct pci_bus {int children; int node; } ;


 int down_write (int *) ;
 int list_add_tail (int *,int *) ;
 struct pci_bus* pci_alloc_child_bus (struct pci_bus*,struct pci_dev*,int) ;
 int pci_bus_sem ;
 int up_write (int *) ;

struct pci_bus *pci_add_new_bus(struct pci_bus *parent, struct pci_dev *dev,
    int busnr)
{
 struct pci_bus *child;

 child = pci_alloc_child_bus(parent, dev, busnr);
 if (child) {
  down_write(&pci_bus_sem);
  list_add_tail(&child->node, &parent->children);
  up_write(&pci_bus_sem);
 }
 return child;
}
