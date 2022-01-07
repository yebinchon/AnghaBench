
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bridge_emul_conf {int command; int secondary_bus; int iolimit; int iobase; } ;
struct pci_bridge_emul {struct pci_bridge_emul_conf conf; struct mvebu_pcie_port* data; } ;
struct mvebu_pcie_port {int dummy; } ;



 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MEMORY ;


 int PCI_IO_RANGE_TYPE_32 ;


 int mvebu_has_ioport (struct mvebu_pcie_port*) ;
 int mvebu_pcie_handle_iobase_change (struct mvebu_pcie_port*) ;
 int mvebu_pcie_handle_membase_change (struct mvebu_pcie_port*) ;
 int mvebu_pcie_set_local_bus_nr (struct mvebu_pcie_port*,int ) ;

__attribute__((used)) static void
mvebu_pci_bridge_emul_base_conf_write(struct pci_bridge_emul *bridge,
          int reg, u32 old, u32 new, u32 mask)
{
 struct mvebu_pcie_port *port = bridge->data;
 struct pci_bridge_emul_conf *conf = &bridge->conf;

 switch (reg) {
 case 132:
 {
  if (!mvebu_has_ioport(port))
   conf->command &= ~PCI_COMMAND_IO;

  if ((old ^ new) & PCI_COMMAND_IO)
   mvebu_pcie_handle_iobase_change(port);
  if ((old ^ new) & PCI_COMMAND_MEMORY)
   mvebu_pcie_handle_membase_change(port);

  break;
 }

 case 131:





  conf->iobase |= PCI_IO_RANGE_TYPE_32;
  conf->iolimit |= PCI_IO_RANGE_TYPE_32;
  mvebu_pcie_handle_iobase_change(port);
  break;

 case 129:
  mvebu_pcie_handle_membase_change(port);
  break;

 case 130:
  mvebu_pcie_handle_iobase_change(port);
  break;

 case 128:
  mvebu_pcie_set_local_bus_nr(port, conf->secondary_bus);
  break;

 default:
  break;
 }
}
