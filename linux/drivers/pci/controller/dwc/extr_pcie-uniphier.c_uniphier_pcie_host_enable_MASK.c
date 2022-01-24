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
struct uniphier_pcie_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; int /*<<< orphan*/  phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uniphier_pcie_priv*) ; 
 int FUNC7 (struct uniphier_pcie_priv*) ; 

__attribute__((used)) static int FUNC8(struct uniphier_pcie_priv *priv)
{
	int ret;

	ret = FUNC1(priv->clk);
	if (ret)
		return ret;

	ret = FUNC5(priv->rst);
	if (ret)
		goto out_clk_disable;

	FUNC6(priv);

	ret = FUNC3(priv->phy);
	if (ret)
		goto out_rst_assert;

	ret = FUNC7(priv);
	if (ret)
		goto out_phy_exit;

	return 0;

out_phy_exit:
	FUNC2(priv->phy);
out_rst_assert:
	FUNC4(priv->rst);
out_clk_disable:
	FUNC0(priv->clk);

	return ret;
}