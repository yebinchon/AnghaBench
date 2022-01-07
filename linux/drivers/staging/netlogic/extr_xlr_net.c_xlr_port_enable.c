
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xlr_net_priv {int base_addr; TYPE_1__* nd; } ;
struct TYPE_2__ {scalar_t__ phy_interface; } ;


 int O_MAC_CONFIG_1__rxen ;
 int O_MAC_CONFIG_1__rxfc ;
 int O_MAC_CONFIG_1__txen ;
 int O_MAC_CONFIG_1__txfc ;
 int O_RX_CONTROL__RGMII ;
 int O_RX_CONTROL__RXENABLE ;
 int O_TX_CONTROL__TXENABLE ;
 int O_TX_CONTROL__TXTHRESHOLD ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII ;
 int R_MAC_CONFIG_1 ;
 int R_RX_CONTROL ;
 int R_TX_CONTROL ;
 int read_c0_prid () ;
 int xlr_reg_update (int ,int ,int,int) ;

__attribute__((used)) static void xlr_port_enable(struct xlr_net_priv *priv)
{
 u32 prid = (read_c0_prid() & 0xf000);


 if ((prid == 0x8000 || prid == 0x4000 || prid == 0xc000) &&
     priv->nd->phy_interface == PHY_INTERFACE_MODE_RGMII)
  xlr_reg_update(priv->base_addr, R_RX_CONTROL,
          (1 << O_RX_CONTROL__RGMII),
          (1 << O_RX_CONTROL__RGMII));


 xlr_reg_update(priv->base_addr, R_MAC_CONFIG_1,
         ((1 << O_MAC_CONFIG_1__rxen) |
   (1 << O_MAC_CONFIG_1__txen) |
   (1 << O_MAC_CONFIG_1__rxfc) |
   (1 << O_MAC_CONFIG_1__txfc)),
         ((1 << O_MAC_CONFIG_1__rxen) |
   (1 << O_MAC_CONFIG_1__txen) |
   (1 << O_MAC_CONFIG_1__rxfc) |
   (1 << O_MAC_CONFIG_1__txfc)));


 xlr_reg_update(priv->base_addr, R_TX_CONTROL,
         ((1 << O_TX_CONTROL__TXENABLE) |
         (512 << O_TX_CONTROL__TXTHRESHOLD)), 0x3fff);


 xlr_reg_update(priv->base_addr, R_RX_CONTROL,
         1 << O_RX_CONTROL__RXENABLE,
         1 << O_RX_CONTROL__RXENABLE);
}
