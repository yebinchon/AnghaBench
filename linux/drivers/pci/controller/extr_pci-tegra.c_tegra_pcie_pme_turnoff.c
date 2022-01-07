
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct tegra_pcie_soc {TYPE_2__* ports; } ;
struct tegra_pcie_port {size_t index; struct tegra_pcie* pcie; } ;
struct tegra_pcie {int dev; scalar_t__ afi; struct tegra_pcie_soc* soc; } ;
struct TYPE_3__ {int turnoff_bit; int ack_bit; } ;
struct TYPE_4__ {TYPE_1__ pme; } ;


 scalar_t__ AFI_PCIE_PME ;
 int PME_ACK_TIMEOUT ;
 int afi_readl (struct tegra_pcie*,scalar_t__) ;
 int afi_writel (struct tegra_pcie*,int,scalar_t__) ;
 int dev_err (int ,char*,size_t) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tegra_pcie_pme_turnoff(struct tegra_pcie_port *port)
{
 struct tegra_pcie *pcie = port->pcie;
 const struct tegra_pcie_soc *soc = pcie->soc;
 int err;
 u32 val;
 u8 ack_bit;

 val = afi_readl(pcie, AFI_PCIE_PME);
 val |= (0x1 << soc->ports[port->index].pme.turnoff_bit);
 afi_writel(pcie, val, AFI_PCIE_PME);

 ack_bit = soc->ports[port->index].pme.ack_bit;
 err = readl_poll_timeout(pcie->afi + AFI_PCIE_PME, val,
     val & (0x1 << ack_bit), 1, PME_ACK_TIMEOUT);
 if (err)
  dev_err(pcie->dev, "PME Ack is not received on port: %d\n",
   port->index);

 usleep_range(10000, 11000);

 val = afi_readl(pcie, AFI_PCIE_PME);
 val &= ~(0x1 << soc->ports[port->index].pme.turnoff_bit);
 afi_writel(pcie, val, AFI_PCIE_PME);
}
