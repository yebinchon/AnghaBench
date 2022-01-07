
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct pci_bus {int bridge_ctl; int busn_res; struct pci_dev* self; } ;


 unsigned long IORESOURCE_IO ;
 unsigned long IORESOURCE_MEM ;
 unsigned long IORESOURCE_PREFETCH ;
 int PCI_BRIDGE_CONTROL ;
 int pci_info (struct pci_dev*,char*,int *) ;
 int pci_setup_bridge_io (struct pci_dev*) ;
 int pci_setup_bridge_mmio (struct pci_dev*) ;
 int pci_setup_bridge_mmio_pref (struct pci_dev*) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void __pci_setup_bridge(struct pci_bus *bus, unsigned long type)
{
 struct pci_dev *bridge = bus->self;

 pci_info(bridge, "PCI bridge to %pR\n",
   &bus->busn_res);

 if (type & IORESOURCE_IO)
  pci_setup_bridge_io(bridge);

 if (type & IORESOURCE_MEM)
  pci_setup_bridge_mmio(bridge);

 if (type & IORESOURCE_PREFETCH)
  pci_setup_bridge_mmio_pref(bridge);

 pci_write_config_word(bridge, PCI_BRIDGE_CONTROL, bus->bridge_ctl);
}
