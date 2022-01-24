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
struct spear1310_miphy_priv {int id; int /*<<< orphan*/  misc; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SPEAR1310_PCIE_MIPHY_CFG_1 ; 
 int /*<<< orphan*/  SPEAR1310_PCIE_SATA_CFG ; 
 int /*<<< orphan*/  SPEAR1310_PCIE_SATA_MIPHY_CFG_PCIE ; 
 int /*<<< orphan*/  SPEAR1310_PCIE_SATA_MIPHY_CFG_PCIE_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct spear1310_miphy_priv *priv)
{
	u32 val;

	FUNC2(priv->misc, SPEAR1310_PCIE_MIPHY_CFG_1,
			   SPEAR1310_PCIE_SATA_MIPHY_CFG_PCIE_MASK,
			   SPEAR1310_PCIE_SATA_MIPHY_CFG_PCIE);

	switch (priv->id) {
	case 0:
		val = FUNC1(0);
		break;
	case 1:
		val = FUNC1(1);
		break;
	case 2:
		val = FUNC1(2);
		break;
	default:
		return -EINVAL;
	}

	FUNC2(priv->misc, SPEAR1310_PCIE_SATA_CFG,
			   FUNC0(priv->id), val);

	return 0;
}