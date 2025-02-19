
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_bridge_emul_conf {int iolimit; int iobase; int iolimitupper; int iobaseupper; int command; } ;
struct mvebu_pcie_window {int remap; int size; scalar_t__ base; } ;
struct TYPE_5__ {struct pci_bridge_emul_conf conf; } ;
struct mvebu_pcie_port {int iowin; int io_attr; int io_target; TYPE_4__* pcie; TYPE_1__ bridge; } ;
struct TYPE_7__ {scalar_t__ start; } ;
struct TYPE_8__ {TYPE_3__ io; TYPE_2__* pdev; } ;
struct TYPE_6__ {int dev; } ;


 int PCI_COMMAND_IO ;
 int dev_WARN (int *,char*) ;
 int mvebu_has_ioport (struct mvebu_pcie_port*) ;
 int mvebu_pcie_set_window (struct mvebu_pcie_port*,int ,int ,struct mvebu_pcie_window*,int *) ;

__attribute__((used)) static void mvebu_pcie_handle_iobase_change(struct mvebu_pcie_port *port)
{
 struct mvebu_pcie_window desired = {};
 struct pci_bridge_emul_conf *conf = &port->bridge.conf;


 if (conf->iolimit < conf->iobase ||
     conf->iolimitupper < conf->iobaseupper ||
     !(conf->command & PCI_COMMAND_IO)) {
  mvebu_pcie_set_window(port, port->io_target, port->io_attr,
          &desired, &port->iowin);
  return;
 }

 if (!mvebu_has_ioport(port)) {
  dev_WARN(&port->pcie->pdev->dev,
    "Attempt to set IO when IO is disabled\n");
  return;
 }
 desired.remap = ((conf->iobase & 0xF0) << 8) |
   (conf->iobaseupper << 16);
 desired.base = port->pcie->io.start + desired.remap;
 desired.size = ((0xFFF | ((conf->iolimit & 0xF0) << 8) |
    (conf->iolimitupper << 16)) -
   desired.remap) +
         1;

 mvebu_pcie_set_window(port, port->io_target, port->io_attr, &desired,
         &port->iowin);
}
