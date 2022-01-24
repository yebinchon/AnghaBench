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
struct phy {int dummy; } ;
struct mvebu_comphy_priv {scalar_t__ base; int /*<<< orphan*/  regmap; } ;
struct mvebu_comphy_lane {int submode; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; int /*<<< orphan*/  port; struct mvebu_comphy_priv* priv; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  MVEBU_COMPHY_PIPE_SELECTOR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MVEBU_COMPHY_SELECTOR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int MVEBU_COMPHY_SERDES_CFG1_RF_RESET ; 
#define  PHY_INTERFACE_MODE_10GKR 131 
#define  PHY_INTERFACE_MODE_2500BASEX 130 
#define  PHY_INTERFACE_MODE_RXAUI 129 
#define  PHY_INTERFACE_MODE_SGMII 128 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct phy*) ; 
 int FUNC5 (struct phy*) ; 
 int FUNC6 (struct phy*) ; 
 struct mvebu_comphy_lane* FUNC7 (struct phy*) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct phy *phy)
{
	struct mvebu_comphy_lane *lane = FUNC7(phy);
	struct mvebu_comphy_priv *priv = lane->priv;
	int ret, mux;
	u32 val;

	mux = FUNC3(lane->id, lane->port,
				   lane->mode, lane->submode);
	if (mux < 0)
		return -ENOTSUPP;

	FUNC9(priv->regmap, MVEBU_COMPHY_PIPE_SELECTOR, &val);
	val &= ~(0xf << FUNC0(lane->id));
	FUNC10(priv->regmap, MVEBU_COMPHY_PIPE_SELECTOR, val);

	FUNC9(priv->regmap, MVEBU_COMPHY_SELECTOR, &val);
	val &= ~(0xf << FUNC1(lane->id));
	val |= mux << FUNC1(lane->id);
	FUNC10(priv->regmap, MVEBU_COMPHY_SELECTOR, val);

	switch (lane->submode) {
	case PHY_INTERFACE_MODE_SGMII:
	case PHY_INTERFACE_MODE_2500BASEX:
		ret = FUNC6(phy);
		break;
	case PHY_INTERFACE_MODE_RXAUI:
		ret = FUNC5(phy);
		break;
	case PHY_INTERFACE_MODE_10GKR:
		ret = FUNC4(phy);
		break;
	default:
		return -ENOTSUPP;
	}

	/* digital reset */
	val = FUNC8(priv->base + FUNC2(lane->id));
	val |= MVEBU_COMPHY_SERDES_CFG1_RF_RESET;
	FUNC11(val, priv->base + FUNC2(lane->id));

	return ret;
}