
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie_port {int pcie; scalar_t__ reset_gpio; } ;


 unsigned long AFI_PEX_CTRL_RST ;
 unsigned long afi_readl (int ,unsigned long) ;
 int afi_writel (int ,unsigned long,unsigned long) ;
 int gpiod_set_value (scalar_t__,int) ;
 unsigned long tegra_pcie_port_get_pex_ctrl (struct tegra_pcie_port*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tegra_pcie_port_reset(struct tegra_pcie_port *port)
{
 unsigned long ctrl = tegra_pcie_port_get_pex_ctrl(port);
 unsigned long value;


 if (port->reset_gpio) {
  gpiod_set_value(port->reset_gpio, 1);
 } else {
  value = afi_readl(port->pcie, ctrl);
  value &= ~AFI_PEX_CTRL_RST;
  afi_writel(port->pcie, value, ctrl);
 }

 usleep_range(1000, 2000);

 if (port->reset_gpio) {
  gpiod_set_value(port->reset_gpio, 0);
 } else {
  value = afi_readl(port->pcie, ctrl);
  value |= AFI_PEX_CTRL_RST;
  afi_writel(port->pcie, value, ctrl);
 }
}
