
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlr_net_priv {int base_addr; } ;


 int O_MAC_CONFIG_1__rxen ;
 int O_MAC_CONFIG_1__rxfc ;
 int O_MAC_CONFIG_1__txen ;
 int O_MAC_CONFIG_1__txfc ;
 int O_RX_CONTROL__RXENABLE ;
 int O_TX_CONTROL__TXENABLE ;
 int O_TX_CONTROL__TXTHRESHOLD ;
 int R_MAC_CONFIG_1 ;
 int R_RX_CONTROL ;
 int R_TX_CONTROL ;
 int xlr_reg_update (int ,int ,int,int) ;

__attribute__((used)) static void xlr_port_disable(struct xlr_net_priv *priv)
{


 xlr_reg_update(priv->base_addr, R_MAC_CONFIG_1,
         ((1 << O_MAC_CONFIG_1__rxen) |
   (1 << O_MAC_CONFIG_1__txen) |
   (1 << O_MAC_CONFIG_1__rxfc) |
   (1 << O_MAC_CONFIG_1__txfc)), 0x0);


 xlr_reg_update(priv->base_addr, R_TX_CONTROL,
         ((1 << O_TX_CONTROL__TXENABLE) |
         (512 << O_TX_CONTROL__TXTHRESHOLD)), 0);


 xlr_reg_update(priv->base_addr, R_RX_CONTROL,
         1 << O_RX_CONTROL__RXENABLE, 0);
}
