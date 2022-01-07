
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_pcie_soc {unsigned long afi_pex2_ctrl; } ;
struct tegra_pcie_port {int index; TYPE_1__* pcie; } ;
struct TYPE_2__ {struct tegra_pcie_soc* soc; } ;


 unsigned long AFI_PEX0_CTRL ;
 unsigned long AFI_PEX1_CTRL ;

__attribute__((used)) static unsigned long tegra_pcie_port_get_pex_ctrl(struct tegra_pcie_port *port)
{
 const struct tegra_pcie_soc *soc = port->pcie->soc;
 unsigned long ret = 0;

 switch (port->index) {
 case 0:
  ret = AFI_PEX0_CTRL;
  break;

 case 1:
  ret = AFI_PEX1_CTRL;
  break;

 case 2:
  ret = soc->afi_pex2_ctrl;
  break;
 }

 return ret;
}
