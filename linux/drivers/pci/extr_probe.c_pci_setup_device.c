
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct resource {void* flags; } ;
struct TYPE_5__ {int * bus; int parent; } ;
struct pci_dev {int hdr_type; int multifunction; int dma_mask; int revision; int class; int subsystem_vendor; int subsystem_device; int transparent; TYPE_1__* bus; struct resource* resource; int broken_intx_masking; scalar_t__ non_compliant_bars; int current_state; int cfg_size; int device; int vendor; int devfn; TYPE_3__ dev; int error_state; int sysdata; } ;
struct pci_bus_region {int start; int end; } ;
struct TYPE_4__ {int number; int bridge; int sysdata; } ;


 int EIO ;
 void* LEGACY_IO_RESOURCE ;
 int PCI_CAP_ID_SSVID ;
 int PCI_CB_SUBSYSTEM_ID ;
 int PCI_CB_SUBSYSTEM_VENDOR_ID ;
 int PCI_CLASS_BRIDGE_CARDBUS ;
 int PCI_CLASS_BRIDGE_PCI ;
 int PCI_CLASS_NOT_DEFINED ;
 int PCI_CLASS_PROG ;
 int PCI_CLASS_STORAGE_IDE ;
 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MEMORY ;
 int PCI_FUNC (int ) ;



 int PCI_ROM_ADDRESS ;
 int PCI_ROM_ADDRESS1 ;
 int PCI_SLOT (int ) ;
 int PCI_SSVID_DEVICE_ID ;
 int PCI_SSVID_VENDOR_ID ;
 int PCI_UNKNOWN ;
 int dev_set_name (TYPE_3__*,char*,int ,int ,int ,int ) ;
 int early_dump_pci_device (struct pci_dev*) ;
 int pci_bus_type ;
 int pci_cfg_space_size (struct pci_dev*) ;
 int pci_channel_io_normal ;
 int pci_class (struct pci_dev*) ;
 int pci_dev_assign_slot (struct pci_dev*) ;
 int pci_domain_nr (TYPE_1__*) ;
 scalar_t__ pci_early_dump ;
 int pci_err (struct pci_dev*,char*,int,...) ;
 int pci_find_capability (struct pci_dev*,int ) ;
 int pci_fixup_device (int ,struct pci_dev*) ;
 int pci_fixup_early ;
 int pci_hdr_type (struct pci_dev*) ;
 int pci_info (struct pci_dev*,char*,...) ;
 int pci_intx_mask_broken (struct pci_dev*) ;
 int pci_read_bases (struct pci_dev*,int,int ) ;
 int pci_read_bridge_windows (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_read_irq (struct pci_dev*) ;
 int pci_subsystem_ids (struct pci_dev*,int*,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 int pcibios_bus_to_resource (TYPE_1__*,struct resource*,struct pci_bus_region*) ;
 int set_pcie_hotplug_bridge (struct pci_dev*) ;
 int set_pcie_port_type (struct pci_dev*) ;
 int set_pcie_thunderbolt (struct pci_dev*) ;
 int set_pcie_untrusted (struct pci_dev*) ;

int pci_setup_device(struct pci_dev *dev)
{
 u32 class;
 u16 cmd;
 u8 hdr_type;
 int pos = 0;
 struct pci_bus_region region;
 struct resource *res;

 hdr_type = pci_hdr_type(dev);

 dev->sysdata = dev->bus->sysdata;
 dev->dev.parent = dev->bus->bridge;
 dev->dev.bus = &pci_bus_type;
 dev->hdr_type = hdr_type & 0x7f;
 dev->multifunction = !!(hdr_type & 0x80);
 dev->error_state = pci_channel_io_normal;
 set_pcie_port_type(dev);

 pci_dev_assign_slot(dev);





 dev->dma_mask = 0xffffffff;

 dev_set_name(&dev->dev, "%04x:%02x:%02x.%d", pci_domain_nr(dev->bus),
       dev->bus->number, PCI_SLOT(dev->devfn),
       PCI_FUNC(dev->devfn));

 class = pci_class(dev);

 dev->revision = class & 0xff;
 dev->class = class >> 8;

 pci_info(dev, "[%04x:%04x] type %02x class %#08x\n",
     dev->vendor, dev->device, dev->hdr_type, dev->class);

 if (pci_early_dump)
  early_dump_pci_device(dev);


 dev->cfg_size = pci_cfg_space_size(dev);


 set_pcie_thunderbolt(dev);

 set_pcie_untrusted(dev);


 dev->current_state = PCI_UNKNOWN;


 pci_fixup_device(pci_fixup_early, dev);


 class = dev->class >> 8;

 if (dev->non_compliant_bars) {
  pci_read_config_word(dev, PCI_COMMAND, &cmd);
  if (cmd & (PCI_COMMAND_IO | PCI_COMMAND_MEMORY)) {
   pci_info(dev, "device has non-compliant BARs; disabling IO/MEM decoding\n");
   cmd &= ~PCI_COMMAND_IO;
   cmd &= ~PCI_COMMAND_MEMORY;
   pci_write_config_word(dev, PCI_COMMAND, cmd);
  }
 }

 dev->broken_intx_masking = pci_intx_mask_broken(dev);

 switch (dev->hdr_type) {
 case 128:
  if (class == PCI_CLASS_BRIDGE_PCI)
   goto bad;
  pci_read_irq(dev);
  pci_read_bases(dev, 6, PCI_ROM_ADDRESS);

  pci_subsystem_ids(dev, &dev->subsystem_vendor, &dev->subsystem_device);







  if (class == PCI_CLASS_STORAGE_IDE) {
   u8 progif;
   pci_read_config_byte(dev, PCI_CLASS_PROG, &progif);
   if ((progif & 1) == 0) {
    region.start = 0x1F0;
    region.end = 0x1F7;
    res = &dev->resource[0];
    res->flags = LEGACY_IO_RESOURCE;
    pcibios_bus_to_resource(dev->bus, res, &region);
    pci_info(dev, "legacy IDE quirk: reg 0x10: %pR\n",
      res);
    region.start = 0x3F6;
    region.end = 0x3F6;
    res = &dev->resource[1];
    res->flags = LEGACY_IO_RESOURCE;
    pcibios_bus_to_resource(dev->bus, res, &region);
    pci_info(dev, "legacy IDE quirk: reg 0x14: %pR\n",
      res);
   }
   if ((progif & 4) == 0) {
    region.start = 0x170;
    region.end = 0x177;
    res = &dev->resource[2];
    res->flags = LEGACY_IO_RESOURCE;
    pcibios_bus_to_resource(dev->bus, res, &region);
    pci_info(dev, "legacy IDE quirk: reg 0x18: %pR\n",
      res);
    region.start = 0x376;
    region.end = 0x376;
    res = &dev->resource[3];
    res->flags = LEGACY_IO_RESOURCE;
    pcibios_bus_to_resource(dev->bus, res, &region);
    pci_info(dev, "legacy IDE quirk: reg 0x1c: %pR\n",
      res);
   }
  }
  break;

 case 130:





  pci_read_irq(dev);
  dev->transparent = ((dev->class & 0xff) == 1);
  pci_read_bases(dev, 2, PCI_ROM_ADDRESS1);
  pci_read_bridge_windows(dev);
  set_pcie_hotplug_bridge(dev);
  pos = pci_find_capability(dev, PCI_CAP_ID_SSVID);
  if (pos) {
   pci_read_config_word(dev, pos + PCI_SSVID_VENDOR_ID, &dev->subsystem_vendor);
   pci_read_config_word(dev, pos + PCI_SSVID_DEVICE_ID, &dev->subsystem_device);
  }
  break;

 case 129:
  if (class != PCI_CLASS_BRIDGE_CARDBUS)
   goto bad;
  pci_read_irq(dev);
  pci_read_bases(dev, 1, 0);
  pci_read_config_word(dev, PCI_CB_SUBSYSTEM_VENDOR_ID, &dev->subsystem_vendor);
  pci_read_config_word(dev, PCI_CB_SUBSYSTEM_ID, &dev->subsystem_device);
  break;

 default:
  pci_err(dev, "unknown header type %02x, ignoring device\n",
   dev->hdr_type);
  return -EIO;

 bad:
  pci_err(dev, "ignoring class %#08x (doesn't match header type %02x)\n",
   dev->class, dev->hdr_type);
  dev->class = PCI_CLASS_NOT_DEFINED << 8;
 }


 return 0;
}
