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
struct phy {int dummy; } ;
struct ltq_vrx200_pcie_phy_priv {int rcu_ahb_endian_big_endian_mask; int /*<<< orphan*/  phy_reset; int /*<<< orphan*/  pcie_reset; int /*<<< orphan*/  rcu_ahb_endian_offset; int /*<<< orphan*/  rcu_regmap; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct ltq_vrx200_pcie_phy_priv* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct phy *phy)
{
	struct ltq_vrx200_pcie_phy_priv *priv = FUNC1(phy);
	int ret;

	if (FUNC0(priv->dev->of_node))
		FUNC2(priv->rcu_regmap,
				   priv->rcu_ahb_endian_offset,
				   priv->rcu_ahb_endian_big_endian_mask,
				   priv->rcu_ahb_endian_big_endian_mask);
	else
		FUNC2(priv->rcu_regmap,
				   priv->rcu_ahb_endian_offset,
				   priv->rcu_ahb_endian_big_endian_mask, 0x0);

	ret = FUNC3(priv->phy_reset);
	if (ret)
		goto err;

	FUNC5(1);

	ret = FUNC4(priv->phy_reset);
	if (ret)
		goto err;

	FUNC5(1);

	ret = FUNC4(priv->pcie_reset);
	if (ret)
		goto err_assert_phy_reset;

	/* Make sure PHY PLL is stable */
	FUNC6(20, 40);

	return 0;

err_assert_phy_reset:
	FUNC3(priv->phy_reset);
err:
	return ret;
}