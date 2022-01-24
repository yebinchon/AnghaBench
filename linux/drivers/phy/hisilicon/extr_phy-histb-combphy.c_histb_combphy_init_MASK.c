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
struct phy {int dummy; } ;
struct histb_combphy_priv {scalar_t__ mmio; int /*<<< orphan*/  por_rst; int /*<<< orphan*/  ref_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMBPHY_BYPASS_CODEC ; 
 scalar_t__ COMBPHY_CFG_REG ; 
 int /*<<< orphan*/  COMBPHY_CLKREF_OUT_OEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct histb_combphy_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct histb_combphy_priv*,int,int) ; 
 struct histb_combphy_priv* FUNC4 (struct phy*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct phy *phy)
{
	struct histb_combphy_priv *priv = FUNC4(phy);
	u32 val;
	int ret;

	ret = FUNC1(priv);
	if (ret)
		return ret;

	/* Clear bypass bit to enable encoding/decoding */
	val = FUNC5(priv->mmio + COMBPHY_CFG_REG);
	val &= ~COMBPHY_BYPASS_CODEC;
	FUNC7(val, priv->mmio + COMBPHY_CFG_REG);

	ret = FUNC0(priv->ref_clk);
	if (ret)
		return ret;

	FUNC6(priv->por_rst);

	/* Enable EP clock */
	val = FUNC5(priv->mmio + COMBPHY_CFG_REG);
	val |= COMBPHY_CLKREF_OUT_OEN;
	FUNC7(val, priv->mmio + COMBPHY_CFG_REG);

	/* Need to wait for EP clock stable */
	FUNC2(5);

	/* Configure nano phy registers as suggested by vendor */
	FUNC3(priv, 0x1, 0x8);
	FUNC3(priv, 0xc, 0x9);
	FUNC3(priv, 0x1a, 0x4);

	return 0;
}