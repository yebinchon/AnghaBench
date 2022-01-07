
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {scalar_t__ hdr_type; int devfn; int bus; } ;


 int PCI_CAP_ID_EA ;
 int PCI_EA_FIRST_ENT ;
 scalar_t__ PCI_EA_NUM_ENT ;
 int PCI_EA_NUM_ENT_MASK ;
 scalar_t__ PCI_HEADER_TYPE_BRIDGE ;
 int pci_bus_read_config_byte (int ,int ,scalar_t__,int*) ;
 int pci_ea_read (struct pci_dev*,int) ;
 int pci_find_capability (struct pci_dev*,int ) ;

void pci_ea_init(struct pci_dev *dev)
{
 int ea;
 u8 num_ent;
 int offset;
 int i;


 ea = pci_find_capability(dev, PCI_CAP_ID_EA);
 if (!ea)
  return;


 pci_bus_read_config_byte(dev->bus, dev->devfn, ea + PCI_EA_NUM_ENT,
     &num_ent);
 num_ent &= PCI_EA_NUM_ENT_MASK;

 offset = ea + PCI_EA_FIRST_ENT;


 if (dev->hdr_type == PCI_HEADER_TYPE_BRIDGE)
  offset += 4;


 for (i = 0; i < num_ent; ++i)
  offset = pci_ea_read(dev, offset);
}
