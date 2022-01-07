
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int is_busmaster; } ;


 int pci_enable_device (struct pci_dev*) ;
 int pci_err (struct pci_dev*,char*,int) ;
 scalar_t__ pci_is_enabled (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 struct pci_dev* pci_upstream_bridge (struct pci_dev*) ;

__attribute__((used)) static void pci_enable_bridge(struct pci_dev *dev)
{
 struct pci_dev *bridge;
 int retval;

 bridge = pci_upstream_bridge(dev);
 if (bridge)
  pci_enable_bridge(bridge);

 if (pci_is_enabled(dev)) {
  if (!dev->is_busmaster)
   pci_set_master(dev);
  return;
 }

 retval = pci_enable_device(dev);
 if (retval)
  pci_err(dev, "Error enabling bridge (%d), continuing\n",
   retval);
 pci_set_master(dev);
}
