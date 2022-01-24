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
struct uniphier_pciephy_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCL_PHY_R00 ; 
 int /*<<< orphan*/  PCL_PHY_R06 ; 
 int /*<<< orphan*/  PCL_PHY_R26 ; 
 int /*<<< orphan*/  RX_EQ_ADJ ; 
 int /*<<< orphan*/  RX_EQ_ADJ_EN ; 
 int /*<<< orphan*/  RX_EQ_ADJ_VAL ; 
 int /*<<< orphan*/  VCO_CTRL ; 
 int /*<<< orphan*/  VCO_CTRL_INIT_VAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct uniphier_pciephy_priv* FUNC3 (struct phy*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uniphier_pciephy_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct uniphier_pciephy_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct phy *phy)
{
	struct uniphier_pciephy_priv *priv = FUNC3(phy);
	int ret;

	ret = FUNC2(priv->clk);
	if (ret)
		return ret;

	ret = FUNC4(priv->rst);
	if (ret)
		goto out_clk_disable;

	FUNC6(priv, PCL_PHY_R00,
				   RX_EQ_ADJ_EN, RX_EQ_ADJ_EN);
	FUNC6(priv, PCL_PHY_R06, RX_EQ_ADJ,
				   FUNC0(RX_EQ_ADJ, RX_EQ_ADJ_VAL));
	FUNC6(priv, PCL_PHY_R26, VCO_CTRL,
				   FUNC0(VCO_CTRL, VCO_CTRL_INIT_VAL));
	FUNC7(1, 10);

	FUNC5(priv);
	FUNC7(1, 10);

	return 0;

out_clk_disable:
	FUNC1(priv->clk);

	return ret;
}