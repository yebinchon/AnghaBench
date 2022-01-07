
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_bridge_emul_conf {int memlimit; int membase; int command; } ;
struct mvebu_pcie_window {int base; int size; int remap; } ;
struct TYPE_2__ {struct pci_bridge_emul_conf conf; } ;
struct mvebu_pcie_port {int memwin; int mem_attr; int mem_target; TYPE_1__ bridge; } ;


 int MVEBU_MBUS_NO_REMAP ;
 int PCI_COMMAND_MEMORY ;
 int mvebu_pcie_set_window (struct mvebu_pcie_port*,int ,int ,struct mvebu_pcie_window*,int *) ;

__attribute__((used)) static void mvebu_pcie_handle_membase_change(struct mvebu_pcie_port *port)
{
 struct mvebu_pcie_window desired = {.remap = MVEBU_MBUS_NO_REMAP};
 struct pci_bridge_emul_conf *conf = &port->bridge.conf;


 if (conf->memlimit < conf->membase ||
     !(conf->command & PCI_COMMAND_MEMORY)) {
  mvebu_pcie_set_window(port, port->mem_target, port->mem_attr,
          &desired, &port->memwin);
  return;
 }







 desired.base = ((conf->membase & 0xFFF0) << 16);
 desired.size = (((conf->memlimit & 0xFFF0) << 16) | 0xFFFFF) -
         desired.base + 1;

 mvebu_pcie_set_window(port, port->mem_target, port->mem_attr, &desired,
         &port->memwin);
}
