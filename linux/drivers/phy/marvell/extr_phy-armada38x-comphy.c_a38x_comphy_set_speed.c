
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a38x_comphy_lane {int dummy; } ;


 int COMPHY_CFG1 ;
 int COMPHY_CFG1_GEN_RX (unsigned int) ;
 int COMPHY_CFG1_GEN_RX_MSK ;
 int COMPHY_CFG1_GEN_TX (unsigned int) ;
 int COMPHY_CFG1_GEN_TX_MSK ;
 int a38x_comphy_set_reg (struct a38x_comphy_lane*,int ,int,int) ;

__attribute__((used)) static void a38x_comphy_set_speed(struct a38x_comphy_lane *lane,
      unsigned int gen_tx, unsigned int gen_rx)
{
 a38x_comphy_set_reg(lane, COMPHY_CFG1,
       COMPHY_CFG1_GEN_TX_MSK | COMPHY_CFG1_GEN_RX_MSK,
       COMPHY_CFG1_GEN_TX(gen_tx) |
              COMPHY_CFG1_GEN_RX(gen_rx));
}
