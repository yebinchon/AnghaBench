
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlr_net_priv {scalar_t__ phy_speed; int port_id; int base_addr; } ;
struct phy_device {scalar_t__ speed; scalar_t__ link; } ;
struct net_device {int dummy; } ;


 int R_INTREG ;
 struct xlr_net_priv* netdev_priv (struct net_device*) ;
 int pr_info (char*,int ) ;
 struct phy_device* xlr_get_phydev (struct xlr_net_priv*) ;
 int xlr_nae_rdreg (int ,int ) ;
 int xlr_set_gmac_speed (struct xlr_net_priv*) ;

__attribute__((used)) static void xlr_gmac_link_adjust(struct net_device *ndev)
{
 struct xlr_net_priv *priv = netdev_priv(ndev);
 struct phy_device *phydev = xlr_get_phydev(priv);
 u32 intreg;

 intreg = xlr_nae_rdreg(priv->base_addr, R_INTREG);
 if (phydev->link) {
  if (phydev->speed != priv->phy_speed) {
   xlr_set_gmac_speed(priv);
   pr_info("gmac%d : Link up\n", priv->port_id);
  }
 } else {
  xlr_set_gmac_speed(priv);
  pr_info("gmac%d : Link down\n", priv->port_id);
 }
}
