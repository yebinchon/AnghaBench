
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rockchip_typec_phy {scalar_t__ base; int flip; } ;


 int AUXDA_POLARITY ;
 scalar_t__ TX_ANA_CTRL_REG_1 ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void tcphy_dp_aux_set_flip(struct rockchip_typec_phy *tcphy)
{
 u16 tx_ana_ctrl_reg_1;
 tx_ana_ctrl_reg_1 = readl(tcphy->base + TX_ANA_CTRL_REG_1);
 if (!tcphy->flip)
  tx_ana_ctrl_reg_1 |= AUXDA_POLARITY;
 else
  tx_ana_ctrl_reg_1 &= ~AUXDA_POLARITY;
 writel(tx_ana_ctrl_reg_1, tcphy->base + TX_ANA_CTRL_REG_1);
}
