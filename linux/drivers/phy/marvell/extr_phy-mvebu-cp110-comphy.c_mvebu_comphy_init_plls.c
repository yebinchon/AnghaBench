
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvebu_comphy_priv {scalar_t__ base; } ;
struct mvebu_comphy_lane {int id; struct mvebu_comphy_priv* priv; } ;


 int ETIMEDOUT ;
 scalar_t__ MVEBU_COMPHY_SERDES_CFG0 (int ) ;
 int MVEBU_COMPHY_SERDES_CFG0_PU_PLL ;
 int MVEBU_COMPHY_SERDES_CFG0_PU_RX ;
 int MVEBU_COMPHY_SERDES_CFG0_PU_TX ;
 scalar_t__ MVEBU_COMPHY_SERDES_CFG1 (int ) ;
 int MVEBU_COMPHY_SERDES_CFG1_RX_INIT ;
 scalar_t__ MVEBU_COMPHY_SERDES_STATUS0 (int ) ;
 int MVEBU_COMPHY_SERDES_STATUS0_RX_INIT ;
 int MVEBU_COMPHY_SERDES_STATUS0_RX_PLL_RDY ;
 int MVEBU_COMPHY_SERDES_STATUS0_TX_PLL_RDY ;
 int readl (scalar_t__) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mvebu_comphy_init_plls(struct mvebu_comphy_lane *lane)
{
 struct mvebu_comphy_priv *priv = lane->priv;
 u32 val;


 val = readl(priv->base + MVEBU_COMPHY_SERDES_CFG0(lane->id));
 val |= MVEBU_COMPHY_SERDES_CFG0_PU_PLL |
        MVEBU_COMPHY_SERDES_CFG0_PU_RX |
        MVEBU_COMPHY_SERDES_CFG0_PU_TX;
 writel(val, priv->base + MVEBU_COMPHY_SERDES_CFG0(lane->id));


 readl_poll_timeout(priv->base + MVEBU_COMPHY_SERDES_STATUS0(lane->id),
      val,
      val & (MVEBU_COMPHY_SERDES_STATUS0_RX_PLL_RDY |
      MVEBU_COMPHY_SERDES_STATUS0_TX_PLL_RDY),
      1000, 150000);
 if (!(val & (MVEBU_COMPHY_SERDES_STATUS0_RX_PLL_RDY |
       MVEBU_COMPHY_SERDES_STATUS0_TX_PLL_RDY)))
  return -ETIMEDOUT;


 val = readl(priv->base + MVEBU_COMPHY_SERDES_CFG1(lane->id));
 val |= MVEBU_COMPHY_SERDES_CFG1_RX_INIT;
 writel(val, priv->base + MVEBU_COMPHY_SERDES_CFG1(lane->id));


 readl_poll_timeout(priv->base + MVEBU_COMPHY_SERDES_STATUS0(lane->id),
      val, val & MVEBU_COMPHY_SERDES_STATUS0_RX_INIT,
      1000, 10000);
 if (!(val & MVEBU_COMPHY_SERDES_STATUS0_RX_INIT))
  return -ETIMEDOUT;

 val = readl(priv->base + MVEBU_COMPHY_SERDES_CFG1(lane->id));
 val &= ~MVEBU_COMPHY_SERDES_CFG1_RX_INIT;
 writel(val, priv->base + MVEBU_COMPHY_SERDES_CFG1(lane->id));

 return 0;
}
