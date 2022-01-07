
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; int class_revision; void* iolimit; void* iobase; int vendor; } ;
struct pci_bridge_emul {int has_pcie; int * ops; struct mvebu_pcie_port* data; TYPE_1__ conf; } ;
struct mvebu_pcie_port {struct pci_bridge_emul bridge; } ;


 int PCIE_DEV_ID_OFF ;
 int PCIE_DEV_REV_OFF ;
 int PCI_BRIDGE_EMUL_NO_PREFETCHABLE_BAR ;
 void* PCI_IO_RANGE_TYPE_32 ;
 int PCI_VENDOR_ID_MARVELL ;
 scalar_t__ mvebu_has_ioport (struct mvebu_pcie_port*) ;
 int mvebu_pci_bridge_emul_ops ;
 int mvebu_readl (struct mvebu_pcie_port*,int ) ;
 int pci_bridge_emul_init (struct pci_bridge_emul*,int ) ;

__attribute__((used)) static void mvebu_pci_bridge_emul_init(struct mvebu_pcie_port *port)
{
 struct pci_bridge_emul *bridge = &port->bridge;

 bridge->conf.vendor = PCI_VENDOR_ID_MARVELL;
 bridge->conf.device = mvebu_readl(port, PCIE_DEV_ID_OFF) >> 16;
 bridge->conf.class_revision =
  mvebu_readl(port, PCIE_DEV_REV_OFF) & 0xff;

 if (mvebu_has_ioport(port)) {

  bridge->conf.iobase = PCI_IO_RANGE_TYPE_32;
  bridge->conf.iolimit = PCI_IO_RANGE_TYPE_32;
 }

 bridge->has_pcie = 1;
 bridge->data = port;
 bridge->ops = &mvebu_pci_bridge_emul_ops;

 pci_bridge_emul_init(bridge, PCI_BRIDGE_EMUL_NO_PREFETCHABLE_BAR);
}
