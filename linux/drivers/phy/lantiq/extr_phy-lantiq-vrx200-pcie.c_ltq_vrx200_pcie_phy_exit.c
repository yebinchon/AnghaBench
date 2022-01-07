
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct ltq_vrx200_pcie_phy_priv {int phy_reset; int pcie_reset; } ;


 struct ltq_vrx200_pcie_phy_priv* phy_get_drvdata (struct phy*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int ltq_vrx200_pcie_phy_exit(struct phy *phy)
{
 struct ltq_vrx200_pcie_phy_priv *priv = phy_get_drvdata(phy);
 int ret;

 ret = reset_control_assert(priv->pcie_reset);
 if (ret)
  return ret;

 ret = reset_control_assert(priv->phy_reset);
 if (ret)
  return ret;

 return 0;
}
