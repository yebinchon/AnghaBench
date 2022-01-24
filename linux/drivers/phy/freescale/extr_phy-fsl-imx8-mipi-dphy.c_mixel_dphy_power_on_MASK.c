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
typedef  int /*<<< orphan*/  u32 ;
struct phy {int /*<<< orphan*/  dev; } ;
struct mixel_dphy_priv {int /*<<< orphan*/  phy_ref_clk; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPHY_LOCK ; 
 int /*<<< orphan*/  DPHY_PD_DPHY ; 
 int /*<<< orphan*/  DPHY_PD_PLL ; 
 int /*<<< orphan*/  PLL_LOCK_SLEEP ; 
 int /*<<< orphan*/  PLL_LOCK_TIMEOUT ; 
 int /*<<< orphan*/  PWR_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct mixel_dphy_priv* FUNC3 (struct phy*) ; 
 int /*<<< orphan*/  FUNC4 (struct phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct phy *phy)
{
	struct mixel_dphy_priv *priv = FUNC3(phy);
	u32 locked;
	int ret;

	ret = FUNC1(priv->phy_ref_clk);
	if (ret < 0)
		return ret;

	FUNC4(phy, PWR_ON, DPHY_PD_PLL);
	ret = FUNC5(priv->regmap, DPHY_LOCK, locked,
				       locked, PLL_LOCK_SLEEP,
				       PLL_LOCK_TIMEOUT);
	if (ret < 0) {
		FUNC2(&phy->dev, "Could not get DPHY lock (%d)!\n", ret);
		goto clock_disable;
	}
	FUNC4(phy, PWR_ON, DPHY_PD_DPHY);

	return 0;
clock_disable:
	FUNC0(priv->phy_ref_clk);
	return ret;
}