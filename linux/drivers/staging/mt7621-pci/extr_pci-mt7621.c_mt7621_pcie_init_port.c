
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7621_pcie_port {int enabled; int phy; int slot; struct mt7621_pcie* pcie; } ;
struct mt7621_pcie {struct device* dev; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,int ) ;
 int mt7621_reset_port (struct mt7621_pcie_port*) ;
 int phy_exit (int ) ;
 int phy_init (int ) ;
 int phy_power_on (int ) ;

__attribute__((used)) static int mt7621_pcie_init_port(struct mt7621_pcie_port *port)
{
 struct mt7621_pcie *pcie = port->pcie;
 struct device *dev = pcie->dev;
 u32 slot = port->slot;
 int err;





 mt7621_reset_port(port);

 err = phy_init(port->phy);
 if (err) {
  dev_err(dev, "failed to initialize port%d phy\n", slot);
  return err;
 }

 err = phy_power_on(port->phy);
 if (err) {
  dev_err(dev, "failed to power on port%d phy\n", slot);
  phy_exit(port->phy);
  return err;
 }

 port->enabled = 1;

 return 0;
}
