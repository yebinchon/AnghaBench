
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlr_net_priv {int phy_addr; int mii_bus; } ;
struct phy_device {int dummy; } ;


 struct phy_device* mdiobus_get_phy (int ,int ) ;

__attribute__((used)) static struct phy_device *xlr_get_phydev(struct xlr_net_priv *priv)
{
 return mdiobus_get_phy(priv->mii_bus, priv->phy_addr);
}
