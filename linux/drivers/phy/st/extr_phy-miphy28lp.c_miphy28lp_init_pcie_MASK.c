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
struct miphy28lp_phy {scalar_t__ pipebase; int /*<<< orphan*/ * syscfg_reg; int /*<<< orphan*/  base; struct miphy28lp_dev* phydev; } ;
struct miphy28lp_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MIPHY_CTRL_DEFAULT ; 
 int /*<<< orphan*/  PCIE_CTRL_MASK ; 
 int /*<<< orphan*/  SATA_CTRL_MASK ; 
 int /*<<< orphan*/  SATA_CTRL_SELECT_PCIE ; 
 size_t SYSCFG_PCI ; 
 int /*<<< orphan*/  SYSCFG_PCIE_PCIE_VAL ; 
 size_t SYSCFG_SATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct miphy28lp_phy*) ; 
 int FUNC3 (struct miphy28lp_phy*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct miphy28lp_phy*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct miphy28lp_phy *miphy_phy)
{
	struct miphy28lp_dev *miphy_dev = miphy_phy->phydev;
	int err;

	if ((!miphy_phy->syscfg_reg[SYSCFG_SATA]) ||
			(!miphy_phy->syscfg_reg[SYSCFG_PCI])
		|| (!miphy_phy->base) || (!miphy_phy->pipebase))
		return -EINVAL;

	FUNC1(miphy_dev->dev, "pcie-up mode, addr 0x%p\n", miphy_phy->base);

	/* Configure the glue-logic */
	FUNC5(miphy_dev->regmap,
			   miphy_phy->syscfg_reg[SYSCFG_SATA],
			   SATA_CTRL_MASK, SATA_CTRL_SELECT_PCIE);

	FUNC5(miphy_dev->regmap, miphy_phy->syscfg_reg[SYSCFG_PCI],
			   PCIE_CTRL_MASK, SYSCFG_PCIE_PCIE_VAL);

	/* MiPHY path and clocking init */
	err = FUNC3(miphy_phy, MIPHY_CTRL_DEFAULT);

	if (err) {
		FUNC0(miphy_dev->dev, "PCIe phy setup failed\n");
		return err;
	}

	/* initialize miphy */
	err = FUNC2(miphy_phy);
	if (err)
		return err;

	/* PIPE Wrapper Configuration */
	FUNC6(0x68, miphy_phy->pipebase + 0x104); /* Rise_0 */
	FUNC6(0x61, miphy_phy->pipebase + 0x105); /* Rise_1 */
	FUNC6(0x68, miphy_phy->pipebase + 0x108); /* Fall_0 */
	FUNC6(0x61, miphy_phy->pipebase + 0x109); /* Fall-1 */
	FUNC6(0x68, miphy_phy->pipebase + 0x10c); /* Threshold_0 */
	FUNC6(0x60, miphy_phy->pipebase + 0x10d); /* Threshold_1 */

	/* Wait for phy_ready */
	return FUNC4(miphy_phy);
}