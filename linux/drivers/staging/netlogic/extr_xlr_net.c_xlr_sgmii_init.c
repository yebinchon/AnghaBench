
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlr_net_priv {int phy_addr; int pcs_addr; int gpio_addr; int serdes_addr; } ;


 int xlr_nae_wreg (int ,int,int) ;
 int xlr_phy_write (int ,int,int,int) ;

__attribute__((used)) static void xlr_sgmii_init(struct xlr_net_priv *priv)
{
 int phy;

 xlr_phy_write(priv->serdes_addr, 26, 0, 0x6DB0);
 xlr_phy_write(priv->serdes_addr, 26, 1, 0xFFFF);
 xlr_phy_write(priv->serdes_addr, 26, 2, 0xB6D0);
 xlr_phy_write(priv->serdes_addr, 26, 3, 0x00FF);
 xlr_phy_write(priv->serdes_addr, 26, 4, 0x0000);
 xlr_phy_write(priv->serdes_addr, 26, 5, 0x0000);
 xlr_phy_write(priv->serdes_addr, 26, 6, 0x0005);
 xlr_phy_write(priv->serdes_addr, 26, 7, 0x0001);
 xlr_phy_write(priv->serdes_addr, 26, 8, 0x0000);
 xlr_phy_write(priv->serdes_addr, 26, 9, 0x0000);
 xlr_phy_write(priv->serdes_addr, 26, 10, 0x0000);


 xlr_nae_wreg(priv->gpio_addr, 0x20, 0x7e6802);
 xlr_nae_wreg(priv->gpio_addr, 0x10, 0x7104);

 xlr_nae_wreg(priv->gpio_addr, 0x22, 0x7e6802);
 xlr_nae_wreg(priv->gpio_addr, 0x21, 0x7104);


 phy = priv->phy_addr % 4 + 27;
 xlr_phy_write(priv->pcs_addr, phy, 0, 0x1000);
 xlr_phy_write(priv->pcs_addr, phy, 0, 0x0200);
}
