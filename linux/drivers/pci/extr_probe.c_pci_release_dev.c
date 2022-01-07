
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dma_alias_mask; struct pci_dev* driver_override; int bus; } ;
struct device {int dummy; } ;


 int bitmap_free (int ) ;
 int kfree (struct pci_dev*) ;
 int pci_bus_put (int ) ;
 int pci_release_capabilities (struct pci_dev*) ;
 int pci_release_of_node (struct pci_dev*) ;
 int pcibios_release_device (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static void pci_release_dev(struct device *dev)
{
 struct pci_dev *pci_dev;

 pci_dev = to_pci_dev(dev);
 pci_release_capabilities(pci_dev);
 pci_release_of_node(pci_dev);
 pcibios_release_device(pci_dev);
 pci_bus_put(pci_dev->bus);
 kfree(pci_dev->driver_override);
 bitmap_free(pci_dev->dma_alias_mask);
 kfree(pci_dev);
}
