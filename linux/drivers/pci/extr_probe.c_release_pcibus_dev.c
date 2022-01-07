
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int bridge; } ;
struct device {int dummy; } ;


 int kfree (struct pci_bus*) ;
 int pci_bus_remove_resources (struct pci_bus*) ;
 int pci_release_bus_of_node (struct pci_bus*) ;
 int put_device (int ) ;
 struct pci_bus* to_pci_bus (struct device*) ;

__attribute__((used)) static void release_pcibus_dev(struct device *dev)
{
 struct pci_bus *pci_bus = to_pci_bus(dev);

 put_device(pci_bus->bridge);
 pci_bus_remove_resources(pci_bus);
 pci_release_bus_of_node(pci_bus);
 kfree(pci_bus);
}
