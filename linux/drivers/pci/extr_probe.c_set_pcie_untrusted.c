
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int untrusted; } ;


 struct pci_dev* pci_upstream_bridge (struct pci_dev*) ;

__attribute__((used)) static void set_pcie_untrusted(struct pci_dev *dev)
{
 struct pci_dev *parent;





 parent = pci_upstream_bridge(dev);
 if (parent && parent->untrusted)
  dev->untrusted = 1;
}
