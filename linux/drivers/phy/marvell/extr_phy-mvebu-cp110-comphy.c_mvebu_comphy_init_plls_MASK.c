#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct mvebu_comphy_priv {scalar_t__ base; } ;
struct mvebu_comphy_lane {int /*<<< orphan*/  id; struct mvebu_comphy_priv* priv; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MVEBU_COMPHY_SERDES_CFG0_PU_PLL ; 
 int MVEBU_COMPHY_SERDES_CFG0_PU_RX ; 
 int MVEBU_COMPHY_SERDES_CFG0_PU_TX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MVEBU_COMPHY_SERDES_CFG1_RX_INIT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int MVEBU_COMPHY_SERDES_STATUS0_RX_INIT ; 
 int MVEBU_COMPHY_SERDES_STATUS0_RX_PLL_RDY ; 
 int MVEBU_COMPHY_SERDES_STATUS0_TX_PLL_RDY ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct mvebu_comphy_lane *lane)
{
	struct mvebu_comphy_priv *priv = lane->priv;
	u32 val;

	/* SERDES external config */
	val = FUNC3(priv->base + FUNC0(lane->id));
	val |= MVEBU_COMPHY_SERDES_CFG0_PU_PLL |
	       MVEBU_COMPHY_SERDES_CFG0_PU_RX |
	       MVEBU_COMPHY_SERDES_CFG0_PU_TX;
	FUNC5(val, priv->base + FUNC0(lane->id));

	/* check rx/tx pll */
	FUNC4(priv->base + FUNC2(lane->id),
			   val,
			   val & (MVEBU_COMPHY_SERDES_STATUS0_RX_PLL_RDY |
				  MVEBU_COMPHY_SERDES_STATUS0_TX_PLL_RDY),
			   1000, 150000);
	if (!(val & (MVEBU_COMPHY_SERDES_STATUS0_RX_PLL_RDY |
		     MVEBU_COMPHY_SERDES_STATUS0_TX_PLL_RDY)))
		return -ETIMEDOUT;

	/* rx init */
	val = FUNC3(priv->base + FUNC1(lane->id));
	val |= MVEBU_COMPHY_SERDES_CFG1_RX_INIT;
	FUNC5(val, priv->base + FUNC1(lane->id));

	/* check rx */
	FUNC4(priv->base + FUNC2(lane->id),
			   val, val & MVEBU_COMPHY_SERDES_STATUS0_RX_INIT,
			   1000, 10000);
	if (!(val & MVEBU_COMPHY_SERDES_STATUS0_RX_INIT))
		return -ETIMEDOUT;

	val = FUNC3(priv->base + FUNC1(lane->id));
	val &= ~MVEBU_COMPHY_SERDES_CFG1_RX_INIT;
	FUNC5(val, priv->base + FUNC1(lane->id));

	return 0;
}