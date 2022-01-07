
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct cygnus_pcie_phy {int dummy; } ;


 int cygnus_pcie_power_config (struct cygnus_pcie_phy*,int) ;
 struct cygnus_pcie_phy* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int cygnus_pcie_phy_power_on(struct phy *p)
{
 struct cygnus_pcie_phy *phy = phy_get_drvdata(p);

 return cygnus_pcie_power_config(phy, 1);
}
