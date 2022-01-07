
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_pcie {int phy; } ;


 int phy_exit (int ) ;
 int phy_init (int ) ;
 int phy_power_on (int ) ;

__attribute__((used)) static int rcar_pcie_phy_init_gen3(struct rcar_pcie *pcie)
{
 int err;

 err = phy_init(pcie->phy);
 if (err)
  return err;

 err = phy_power_on(pcie->phy);
 if (err)
  phy_exit(pcie->phy);

 return err;
}
