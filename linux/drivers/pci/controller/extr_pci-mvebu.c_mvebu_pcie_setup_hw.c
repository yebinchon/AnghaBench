
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvebu_pcie_port {int dummy; } ;


 int PCIE_CMD_OFF ;
 int PCIE_MASK_ENABLE_INTS ;
 int PCIE_MASK_OFF ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MASTER ;
 int PCI_COMMAND_MEMORY ;
 int mvebu_pcie_setup_wins (struct mvebu_pcie_port*) ;
 int mvebu_readl (struct mvebu_pcie_port*,int ) ;
 int mvebu_writel (struct mvebu_pcie_port*,int ,int ) ;

__attribute__((used)) static void mvebu_pcie_setup_hw(struct mvebu_pcie_port *port)
{
 u32 cmd, mask;


 mvebu_pcie_setup_wins(port);


 cmd = mvebu_readl(port, PCIE_CMD_OFF);
 cmd |= PCI_COMMAND_IO;
 cmd |= PCI_COMMAND_MEMORY;
 cmd |= PCI_COMMAND_MASTER;
 mvebu_writel(port, cmd, PCIE_CMD_OFF);


 mask = mvebu_readl(port, PCIE_MASK_OFF);
 mask |= PCIE_MASK_ENABLE_INTS;
 mvebu_writel(port, mask, PCIE_MASK_OFF);
}
