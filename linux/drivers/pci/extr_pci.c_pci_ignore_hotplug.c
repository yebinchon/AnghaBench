
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int ignore_hotplug; TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;



void pci_ignore_hotplug(struct pci_dev *dev)
{
 struct pci_dev *bridge = dev->bus->self;

 dev->ignore_hotplug = 1;

 if (bridge)
  bridge->ignore_hotplug = 1;
}
