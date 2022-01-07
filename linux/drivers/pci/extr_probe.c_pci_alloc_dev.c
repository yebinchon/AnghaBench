
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * type; } ;
struct pci_dev {int bus; TYPE_1__ dev; int bus_list; } ;
struct pci_bus {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct pci_dev* kzalloc (int,int ) ;
 int pci_bus_get (struct pci_bus*) ;
 int pci_dev_type ;

struct pci_dev *pci_alloc_dev(struct pci_bus *bus)
{
 struct pci_dev *dev;

 dev = kzalloc(sizeof(struct pci_dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 INIT_LIST_HEAD(&dev->bus_list);
 dev->dev.type = &pci_dev_type;
 dev->bus = pci_bus_get(bus);

 return dev;
}
