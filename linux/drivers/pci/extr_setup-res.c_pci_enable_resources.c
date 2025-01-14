
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct resource {int flags; int parent; } ;
struct pci_dev {struct resource* resource; } ;


 int EINVAL ;
 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 int IORESOURCE_ROM_ENABLE ;
 int IORESOURCE_UNSET ;
 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MEMORY ;
 int PCI_NUM_RESOURCES ;
 int PCI_ROM_RESOURCE ;
 int pci_err (struct pci_dev*,char*,int,struct resource*) ;
 int pci_info (struct pci_dev*,char*,int ,int ) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;

int pci_enable_resources(struct pci_dev *dev, int mask)
{
 u16 cmd, old_cmd;
 int i;
 struct resource *r;

 pci_read_config_word(dev, PCI_COMMAND, &cmd);
 old_cmd = cmd;

 for (i = 0; i < PCI_NUM_RESOURCES; i++) {
  if (!(mask & (1 << i)))
   continue;

  r = &dev->resource[i];

  if (!(r->flags & (IORESOURCE_IO | IORESOURCE_MEM)))
   continue;
  if ((i == PCI_ROM_RESOURCE) &&
    (!(r->flags & IORESOURCE_ROM_ENABLE)))
   continue;

  if (r->flags & IORESOURCE_UNSET) {
   pci_err(dev, "can't enable device: BAR %d %pR not assigned\n",
    i, r);
   return -EINVAL;
  }

  if (!r->parent) {
   pci_err(dev, "can't enable device: BAR %d %pR not claimed\n",
    i, r);
   return -EINVAL;
  }

  if (r->flags & IORESOURCE_IO)
   cmd |= PCI_COMMAND_IO;
  if (r->flags & IORESOURCE_MEM)
   cmd |= PCI_COMMAND_MEMORY;
 }

 if (cmd != old_cmd) {
  pci_info(dev, "enabling device (%04x -> %04x)\n", old_cmd, cmd);
  pci_write_config_word(dev, PCI_COMMAND, cmd);
 }
 return 0;
}
