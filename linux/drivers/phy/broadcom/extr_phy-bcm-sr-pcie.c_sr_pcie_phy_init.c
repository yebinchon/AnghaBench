
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sr_pcie_phy {int dummy; } ;
struct phy {int dummy; } ;


 int ENODEV ;
 scalar_t__ pcie_core_is_for_rc (struct sr_pcie_phy*) ;
 struct sr_pcie_phy* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int sr_pcie_phy_init(struct phy *p)
{
 struct sr_pcie_phy *phy = phy_get_drvdata(p);






 if (pcie_core_is_for_rc(phy))
  return 0;

 return -ENODEV;
}
