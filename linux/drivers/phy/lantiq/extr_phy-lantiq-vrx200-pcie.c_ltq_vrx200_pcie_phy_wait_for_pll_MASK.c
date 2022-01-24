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
struct ltq_vrx200_pcie_phy_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  phy_regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_PHY_PLL_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct ltq_vrx200_pcie_phy_priv* FUNC1 (struct phy*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct ltq_vrx200_pcie_phy_priv *priv = FUNC1(phy);
	unsigned int tmp;
	int ret;

	ret = FUNC2(priv->phy_regmap, PCIE_PHY_PLL_STATUS,
				       tmp, ((tmp & 0x0070) == 0x0070), 10,
				       10000);
	if (ret) {
		FUNC0(priv->dev, "PLL Link timeout, PLL status = 0x%04x\n",
			tmp);
		return ret;
	}

	return 0;
}