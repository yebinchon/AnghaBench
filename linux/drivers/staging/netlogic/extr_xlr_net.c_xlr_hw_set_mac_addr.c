
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xlr_net_priv {int base_addr; TYPE_1__* nd; } ;
struct net_device {int* dev_addr; } ;
struct TYPE_2__ {scalar_t__ phy_interface; } ;


 int MAC_B2B_IPG ;
 int O_MAC_FILTER_CONFIG__ALL_MCAST_EN ;
 int O_MAC_FILTER_CONFIG__BROADCAST_EN ;
 int O_MAC_FILTER_CONFIG__MAC_ADDR0_VALID ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int R_IPG_IFG ;
 scalar_t__ R_MAC_ADDR0 ;
 scalar_t__ R_MAC_ADDR_MASK2 ;
 scalar_t__ R_MAC_ADDR_MASK3 ;
 scalar_t__ R_MAC_FILTER_CONFIG ;
 struct xlr_net_priv* netdev_priv (struct net_device*) ;
 int xlr_nae_wreg (int ,scalar_t__,int) ;
 int xlr_reg_update (int ,int ,int ,int) ;

__attribute__((used)) static void xlr_hw_set_mac_addr(struct net_device *ndev)
{
 struct xlr_net_priv *priv = netdev_priv(ndev);


 xlr_nae_wreg(priv->base_addr, R_MAC_ADDR0,
       ((ndev->dev_addr[5] << 24) | (ndev->dev_addr[4] << 16) |
       (ndev->dev_addr[3] << 8) | (ndev->dev_addr[2])));
 xlr_nae_wreg(priv->base_addr, R_MAC_ADDR0 + 1,
       ((ndev->dev_addr[1] << 24) | (ndev->dev_addr[0] << 16)));

 xlr_nae_wreg(priv->base_addr, R_MAC_ADDR_MASK2, 0xffffffff);
 xlr_nae_wreg(priv->base_addr, R_MAC_ADDR_MASK2 + 1, 0xffffffff);
 xlr_nae_wreg(priv->base_addr, R_MAC_ADDR_MASK3, 0xffffffff);
 xlr_nae_wreg(priv->base_addr, R_MAC_ADDR_MASK3 + 1, 0xffffffff);

 xlr_nae_wreg(priv->base_addr, R_MAC_FILTER_CONFIG,
       (1 << O_MAC_FILTER_CONFIG__BROADCAST_EN) |
       (1 << O_MAC_FILTER_CONFIG__ALL_MCAST_EN) |
       (1 << O_MAC_FILTER_CONFIG__MAC_ADDR0_VALID));

 if (priv->nd->phy_interface == PHY_INTERFACE_MODE_RGMII ||
     priv->nd->phy_interface == PHY_INTERFACE_MODE_SGMII)
  xlr_reg_update(priv->base_addr, R_IPG_IFG, MAC_B2B_IPG, 0x7f);
}
