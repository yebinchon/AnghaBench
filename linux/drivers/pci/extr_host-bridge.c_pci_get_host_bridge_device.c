
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int bus; } ;
struct pci_bus {struct device* bridge; } ;
struct device {int kobj; } ;


 struct pci_bus* find_pci_root_bus (int ) ;
 int kobject_get (int *) ;

struct device *pci_get_host_bridge_device(struct pci_dev *dev)
{
 struct pci_bus *root_bus = find_pci_root_bus(dev->bus);
 struct device *bridge = root_bus->bridge;

 kobject_get(&bridge->kobj);
 return bridge;
}
