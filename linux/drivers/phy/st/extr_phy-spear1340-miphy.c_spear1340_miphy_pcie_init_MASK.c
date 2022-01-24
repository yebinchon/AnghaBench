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
struct spear1340_miphy_priv {int /*<<< orphan*/  misc; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPEAR1340_PCIE_CFG_VAL ; 
 int /*<<< orphan*/  SPEAR1340_PCIE_MIPHY_CFG ; 
 int /*<<< orphan*/  SPEAR1340_PCIE_MIPHY_CFG_MASK ; 
 int /*<<< orphan*/  SPEAR1340_PCIE_SATA_CFG ; 
 int /*<<< orphan*/  SPEAR1340_PCIE_SATA_CFG_MASK ; 
 int /*<<< orphan*/  SPEAR1340_PCIE_SATA_MIPHY_CFG_PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct spear1340_miphy_priv *priv)
{
	FUNC0(priv->misc, SPEAR1340_PCIE_MIPHY_CFG,
			   SPEAR1340_PCIE_MIPHY_CFG_MASK,
			   SPEAR1340_PCIE_SATA_MIPHY_CFG_PCIE);
	FUNC0(priv->misc, SPEAR1340_PCIE_SATA_CFG,
			   SPEAR1340_PCIE_SATA_CFG_MASK,
			   SPEAR1340_PCIE_CFG_VAL);

	return 0;
}