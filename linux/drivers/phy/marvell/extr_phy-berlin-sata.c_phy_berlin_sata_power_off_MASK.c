#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct phy_berlin_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct phy_berlin_desc {int /*<<< orphan*/  power_bit; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct phy {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_REGISTER ; 
 scalar_t__ HOST_VSA_ADDR ; 
 scalar_t__ HOST_VSA_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct phy_berlin_priv* FUNC2 (int /*<<< orphan*/ ) ; 
 struct phy_berlin_desc* FUNC3 (struct phy*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct phy *phy)
{
	struct phy_berlin_desc *desc = FUNC3(phy);
	struct phy_berlin_priv *priv = FUNC2(phy->dev.parent);
	u32 regval;

	FUNC1(priv->clk);

	FUNC5(&priv->lock);

	/* Power down PHY */
	FUNC7(CONTROL_REGISTER, priv->base + HOST_VSA_ADDR);
	regval = FUNC4(priv->base + HOST_VSA_DATA);
	regval |= desc->power_bit;
	FUNC7(regval, priv->base + HOST_VSA_DATA);

	FUNC6(&priv->lock);

	FUNC0(priv->clk);

	return 0;
}