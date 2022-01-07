
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_g12a_usb3_pcie_priv {int regmap; } ;


 unsigned int FIELD_PREP (int ,unsigned int) ;
 int PHY_R4 ;
 unsigned int PHY_R4_PHY_CR_CAP_ADDR ;
 int PHY_R4_PHY_CR_DATA_IN ;
 int PHY_R5 ;
 unsigned int PHY_R5_PHY_CR_ACK ;
 int regmap_read_poll_timeout (int ,int ,unsigned int,int,int,int) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int phy_g12a_usb3_pcie_cr_bus_addr(struct phy_g12a_usb3_pcie_priv *priv,
       unsigned int addr)
{
 unsigned int val, reg;
 int ret;

 reg = FIELD_PREP(PHY_R4_PHY_CR_DATA_IN, addr);

 regmap_write(priv->regmap, PHY_R4, reg);
 regmap_write(priv->regmap, PHY_R4, reg);

 regmap_write(priv->regmap, PHY_R4, reg | PHY_R4_PHY_CR_CAP_ADDR);

 ret = regmap_read_poll_timeout(priv->regmap, PHY_R5, val,
           (val & PHY_R5_PHY_CR_ACK),
           5, 1000);
 if (ret)
  return ret;

 regmap_write(priv->regmap, PHY_R4, reg);

 ret = regmap_read_poll_timeout(priv->regmap, PHY_R5, val,
           !(val & PHY_R5_PHY_CR_ACK),
           5, 1000);
 if (ret)
  return ret;

 return 0;
}
