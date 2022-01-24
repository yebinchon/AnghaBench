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
struct phy {int dummy; } ;
struct ltq_vrx200_pcie_phy_priv {int /*<<< orphan*/  pdi_clk; int /*<<< orphan*/  phy_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy*) ; 
 scalar_t__ FUNC4 (struct phy*) ; 
 int /*<<< orphan*/  FUNC5 (struct phy*) ; 
 struct ltq_vrx200_pcie_phy_priv* FUNC6 (struct phy*) ; 

__attribute__((used)) static int FUNC7(struct phy *phy)
{
	struct ltq_vrx200_pcie_phy_priv *priv = FUNC6(phy);
	int ret;

	/* Enable PDI to access PCIe PHY register */
	ret = FUNC1(priv->pdi_clk);
	if (ret)
		goto err;

	/* Configure PLL and PHY clock */
	FUNC3(phy);

	FUNC5(phy);

	/* Enable the PCIe PHY and make PLL setting take effect */
	ret = FUNC1(priv->phy_clk);
	if (ret)
		goto err_disable_pdi_clk;

	/* Check if we are in "startup ready" status */
	if (FUNC4(phy) != 0)
		goto err_disable_phy_clk;

	FUNC2(phy);

	return 0;

err_disable_phy_clk:
	FUNC0(priv->phy_clk);
err_disable_pdi_clk:
	FUNC0(priv->pdi_clk);
err:
	return ret;
}