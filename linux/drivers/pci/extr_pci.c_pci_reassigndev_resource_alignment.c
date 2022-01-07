
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct resource {int flags; scalar_t__ start; scalar_t__ end; } ;
struct pci_dev {scalar_t__ hdr_type; int class; struct resource* resource; scalar_t__ is_virtfn; } ;
typedef int resource_size_t ;


 int IORESOURCE_MEM ;
 int IORESOURCE_UNSET ;
 int PCI_BRIDGE_RESOURCES ;
 int PCI_CLASS_BRIDGE_HOST ;
 int PCI_COMMAND ;
 int PCI_COMMAND_MEMORY ;
 scalar_t__ PCI_HEADER_TYPE_BRIDGE ;
 scalar_t__ PCI_HEADER_TYPE_NORMAL ;
 int PCI_NUM_RESOURCES ;
 int PCI_ROM_RESOURCE ;
 int pci_disable_bridge_window (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int pci_request_resource_alignment (struct pci_dev*,int,int ,int) ;
 int pci_specified_resource_alignment (struct pci_dev*,int*) ;
 int pci_warn (struct pci_dev*,char*) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;
 scalar_t__ resource_size (struct resource*) ;

void pci_reassigndev_resource_alignment(struct pci_dev *dev)
{
 int i;
 struct resource *r;
 resource_size_t align;
 u16 command;
 bool resize = 0;







 if (dev->is_virtfn)
  return;


 align = pci_specified_resource_alignment(dev, &resize);
 if (!align)
  return;

 if (dev->hdr_type == PCI_HEADER_TYPE_NORMAL &&
     (dev->class >> 8) == PCI_CLASS_BRIDGE_HOST) {
  pci_warn(dev, "Can't reassign resources to host bridge\n");
  return;
 }

 pci_read_config_word(dev, PCI_COMMAND, &command);
 command &= ~PCI_COMMAND_MEMORY;
 pci_write_config_word(dev, PCI_COMMAND, command);

 for (i = 0; i <= PCI_ROM_RESOURCE; i++)
  pci_request_resource_alignment(dev, i, align, resize);






 if (dev->hdr_type == PCI_HEADER_TYPE_BRIDGE) {
  for (i = PCI_BRIDGE_RESOURCES; i < PCI_NUM_RESOURCES; i++) {
   r = &dev->resource[i];
   if (!(r->flags & IORESOURCE_MEM))
    continue;
   r->flags |= IORESOURCE_UNSET;
   r->end = resource_size(r) - 1;
   r->start = 0;
  }
  pci_disable_bridge_window(dev);
 }
}
