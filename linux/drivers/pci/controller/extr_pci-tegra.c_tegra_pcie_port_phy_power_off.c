
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_pcie_port {unsigned int lanes; int * phys; TYPE_1__* pcie; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int dev_err (struct device*,char*,unsigned int,int) ;
 int phy_power_off (int ) ;

__attribute__((used)) static int tegra_pcie_port_phy_power_off(struct tegra_pcie_port *port)
{
 struct device *dev = port->pcie->dev;
 unsigned int i;
 int err;

 for (i = 0; i < port->lanes; i++) {
  err = phy_power_off(port->phys[i]);
  if (err < 0) {
   dev_err(dev, "failed to power off PHY#%u: %d\n", i,
    err);
   return err;
  }
 }

 return 0;
}
