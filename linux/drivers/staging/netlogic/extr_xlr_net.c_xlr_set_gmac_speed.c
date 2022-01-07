
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlr_net_priv {int phy_speed; int port_id; int base_addr; } ;
struct phy_device {scalar_t__ interface; int speed; } ;


 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int R_CORECONTROL ;
 int R_INTERFACE_CONTROL ;
 int R_MAC_CONFIG_2 ;
 int SGMII_SPEED_10 ;
 int SGMII_SPEED_100 ;
 int SGMII_SPEED_1000 ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int pr_info (char*,int ,int) ;
 struct phy_device* xlr_get_phydev (struct xlr_net_priv*) ;
 int xlr_nae_wreg (int ,int ,int) ;
 int xlr_sgmii_init (struct xlr_net_priv*) ;

void xlr_set_gmac_speed(struct xlr_net_priv *priv)
{
 struct phy_device *phydev = xlr_get_phydev(priv);
 int speed;

 if (phydev->interface == PHY_INTERFACE_MODE_SGMII)
  xlr_sgmii_init(priv);

 if (phydev->speed != priv->phy_speed) {
  speed = phydev->speed;
  if (speed == SPEED_1000) {

   xlr_nae_wreg(priv->base_addr, R_MAC_CONFIG_2, 0x7217);
   priv->phy_speed = speed;
  } else if (speed == SPEED_100 || speed == SPEED_10) {

   xlr_nae_wreg(priv->base_addr, R_MAC_CONFIG_2, 0x7117);
   priv->phy_speed = speed;
  }

  if (phydev->interface == PHY_INTERFACE_MODE_SGMII) {
   if (speed == SPEED_10)
    xlr_nae_wreg(priv->base_addr,
          R_INTERFACE_CONTROL,
          SGMII_SPEED_10);
   if (speed == SPEED_100)
    xlr_nae_wreg(priv->base_addr,
          R_INTERFACE_CONTROL,
          SGMII_SPEED_100);
   if (speed == SPEED_1000)
    xlr_nae_wreg(priv->base_addr,
          R_INTERFACE_CONTROL,
          SGMII_SPEED_1000);
  }
  if (speed == SPEED_10)
   xlr_nae_wreg(priv->base_addr, R_CORECONTROL, 0x2);
  if (speed == SPEED_100)
   xlr_nae_wreg(priv->base_addr, R_CORECONTROL, 0x1);
  if (speed == SPEED_1000)
   xlr_nae_wreg(priv->base_addr, R_CORECONTROL, 0x0);
 }
 pr_info("gmac%d : %dMbps\n", priv->port_id, priv->phy_speed);
}
