
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_pcie_soc {scalar_t__ has_pex_clkreq_en; } ;
struct tegra_pcie_port {TYPE_1__* pcie; int index; } ;
struct TYPE_3__ {struct tegra_pcie_soc* soc; } ;


 unsigned long AFI_PCIE_CONFIG ;
 unsigned long AFI_PCIE_CONFIG_PCIE_CLKREQ_GPIO (int ) ;
 unsigned long AFI_PCIE_CONFIG_PCIE_DISABLE (int ) ;
 unsigned long AFI_PEX_CTRL_CLKREQ_EN ;
 unsigned long AFI_PEX_CTRL_REFCLK_EN ;
 unsigned long AFI_PEX_CTRL_RST ;
 unsigned long afi_readl (TYPE_1__*,unsigned long) ;
 int afi_writel (TYPE_1__*,unsigned long,unsigned long) ;
 unsigned long tegra_pcie_port_get_pex_ctrl (struct tegra_pcie_port*) ;

__attribute__((used)) static void tegra_pcie_port_disable(struct tegra_pcie_port *port)
{
 unsigned long ctrl = tegra_pcie_port_get_pex_ctrl(port);
 const struct tegra_pcie_soc *soc = port->pcie->soc;
 unsigned long value;


 value = afi_readl(port->pcie, ctrl);
 value &= ~AFI_PEX_CTRL_RST;
 afi_writel(port->pcie, value, ctrl);


 value = afi_readl(port->pcie, ctrl);

 if (soc->has_pex_clkreq_en)
  value &= ~AFI_PEX_CTRL_CLKREQ_EN;

 value &= ~AFI_PEX_CTRL_REFCLK_EN;
 afi_writel(port->pcie, value, ctrl);


 value = afi_readl(port->pcie, AFI_PCIE_CONFIG);
 value |= AFI_PCIE_CONFIG_PCIE_DISABLE(port->index);
 value |= AFI_PCIE_CONFIG_PCIE_CLKREQ_GPIO(port->index);
 afi_writel(port->pcie, value, AFI_PCIE_CONFIG);
}
