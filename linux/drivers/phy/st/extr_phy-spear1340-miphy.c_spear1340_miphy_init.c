
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear1340_miphy_priv {scalar_t__ mode; } ;
struct phy {int dummy; } ;


 scalar_t__ PCIE ;
 scalar_t__ SATA ;
 struct spear1340_miphy_priv* phy_get_drvdata (struct phy*) ;
 int spear1340_miphy_pcie_init (struct spear1340_miphy_priv*) ;
 int spear1340_miphy_sata_init (struct spear1340_miphy_priv*) ;

__attribute__((used)) static int spear1340_miphy_init(struct phy *phy)
{
 struct spear1340_miphy_priv *priv = phy_get_drvdata(phy);
 int ret = 0;

 if (priv->mode == SATA)
  ret = spear1340_miphy_sata_init(priv);
 else if (priv->mode == PCIE)
  ret = spear1340_miphy_pcie_init(priv);

 return ret;
}
