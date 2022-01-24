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
struct mvebu_comphy_priv {int /*<<< orphan*/  regmap; scalar_t__ base; } ;
struct mvebu_comphy_lane {int /*<<< orphan*/  id; struct mvebu_comphy_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVEBU_COMPHY_PIPE_SELECTOR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MVEBU_COMPHY_SELECTOR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int MVEBU_COMPHY_SERDES_CFG1_CORE_RESET ; 
 int MVEBU_COMPHY_SERDES_CFG1_RESET ; 
 int MVEBU_COMPHY_SERDES_CFG1_RF_RESET ; 
 struct mvebu_comphy_lane* FUNC3 (struct phy*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct phy *phy)
{
	struct mvebu_comphy_lane *lane = FUNC3(phy);
	struct mvebu_comphy_priv *priv = lane->priv;
	u32 val;

	val = FUNC4(priv->base + FUNC2(lane->id));
	val &= ~(MVEBU_COMPHY_SERDES_CFG1_RESET |
		 MVEBU_COMPHY_SERDES_CFG1_CORE_RESET |
		 MVEBU_COMPHY_SERDES_CFG1_RF_RESET);
	FUNC7(val, priv->base + FUNC2(lane->id));

	FUNC5(priv->regmap, MVEBU_COMPHY_SELECTOR, &val);
	val &= ~(0xf << FUNC1(lane->id));
	FUNC6(priv->regmap, MVEBU_COMPHY_SELECTOR, val);

	FUNC5(priv->regmap, MVEBU_COMPHY_PIPE_SELECTOR, &val);
	val &= ~(0xf << FUNC0(lane->id));
	FUNC6(priv->regmap, MVEBU_COMPHY_PIPE_SELECTOR, val);

	return 0;
}