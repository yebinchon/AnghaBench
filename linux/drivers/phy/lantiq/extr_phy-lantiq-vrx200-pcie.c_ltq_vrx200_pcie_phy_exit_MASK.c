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
struct ltq_vrx200_pcie_phy_priv {int /*<<< orphan*/  phy_reset; int /*<<< orphan*/  pcie_reset; } ;

/* Variables and functions */
 struct ltq_vrx200_pcie_phy_priv* FUNC0 (struct phy*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy *phy)
{
	struct ltq_vrx200_pcie_phy_priv *priv = FUNC0(phy);
	int ret;

	ret = FUNC1(priv->pcie_reset);
	if (ret)
		return ret;

	ret = FUNC1(priv->phy_reset);
	if (ret)
		return ret;

	return 0;
}