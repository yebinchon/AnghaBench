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
struct histb_combphy_priv {int /*<<< orphan*/  ref_clk; int /*<<< orphan*/  por_rst; scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ COMBPHY_CFG_REG ; 
 int /*<<< orphan*/  COMBPHY_CLKREF_OUT_OEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct histb_combphy_priv* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct phy *phy)
{
	struct histb_combphy_priv *priv = FUNC1(phy);
	u32 val;

	/* Disable EP clock */
	val = FUNC2(priv->mmio + COMBPHY_CFG_REG);
	val &= ~COMBPHY_CLKREF_OUT_OEN;
	FUNC4(val, priv->mmio + COMBPHY_CFG_REG);

	FUNC3(priv->por_rst);
	FUNC0(priv->ref_clk);

	return 0;
}