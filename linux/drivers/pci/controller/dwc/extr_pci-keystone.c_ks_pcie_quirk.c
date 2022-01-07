
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int class; int member_0; int class_mask; } ;
struct pci_dev {int dev; struct pci_bus* bus; } ;
struct pci_bus {struct pci_bus* parent; struct pci_dev* self; } ;







 int PCI_DEVICE (int const,int ) ;

 int dev_info (int *,char*) ;
 scalar_t__ pci_is_root_bus (struct pci_bus*) ;
 scalar_t__ pci_match_id (struct pci_device_id const*,struct pci_dev*) ;
 int pcie_get_readrq (struct pci_dev*) ;
 int pcie_set_readrq (struct pci_dev*,int) ;

__attribute__((used)) static void ks_pcie_quirk(struct pci_dev *dev)
{
 struct pci_bus *bus = dev->bus;
 struct pci_dev *bridge;
 static const struct pci_device_id rc_pci_devids[] = {
  { PCI_DEVICE(128, 131),
   .class = 129 << 8, .class_mask = ~0, },
  { PCI_DEVICE(128, 133),
   .class = 129 << 8, .class_mask = ~0, },
  { PCI_DEVICE(128, 130),
   .class = 129 << 8, .class_mask = ~0, },
  { PCI_DEVICE(128, 132),
   .class = 129 << 8, .class_mask = ~0, },
  { 0, },
 };

 if (pci_is_root_bus(bus))
  bridge = dev;


 while (!pci_is_root_bus(bus)) {
  bridge = bus->self;
  bus = bus->parent;
 }

 if (!bridge)
  return;







 if (pci_match_id(rc_pci_devids, bridge)) {
  if (pcie_get_readrq(dev) > 256) {
   dev_info(&dev->dev, "limiting MRRS to 256\n");
   pcie_set_readrq(dev, 256);
  }
 }
}
