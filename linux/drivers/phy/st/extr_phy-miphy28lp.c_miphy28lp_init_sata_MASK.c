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
struct miphy28lp_phy {int sata_gen; int /*<<< orphan*/ * syscfg_reg; int /*<<< orphan*/  base; struct miphy28lp_dev* phydev; } ;
struct miphy28lp_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MIPHY_CTRL_DEFAULT ; 
 int /*<<< orphan*/  PCIE_CTRL_MASK ; 
 int /*<<< orphan*/  SATA_CTRL_MASK ; 
 int SATA_CTRL_SELECT_PCIE ; 
 int SATA_CTRL_SELECT_SATA ; 
 int SATA_GEN1 ; 
 int SATA_SPDMODE ; 
 size_t SYSCFG_PCI ; 
 size_t SYSCFG_SATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct miphy28lp_phy*) ; 
 int FUNC3 (struct miphy28lp_phy*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct miphy28lp_phy*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct miphy28lp_phy *miphy_phy)
{
	struct miphy28lp_dev *miphy_dev = miphy_phy->phydev;
	int err, sata_conf = SATA_CTRL_SELECT_SATA;

	if ((!miphy_phy->syscfg_reg[SYSCFG_SATA]) ||
			(!miphy_phy->syscfg_reg[SYSCFG_PCI]) ||
			(!miphy_phy->base))
		return -EINVAL;

	FUNC1(miphy_dev->dev, "sata-up mode, addr 0x%p\n", miphy_phy->base);

	/* Configure the glue-logic */
	sata_conf |= ((miphy_phy->sata_gen - SATA_GEN1) << SATA_SPDMODE);

	FUNC5(miphy_dev->regmap,
			   miphy_phy->syscfg_reg[SYSCFG_SATA],
			   SATA_CTRL_MASK, sata_conf);

	FUNC5(miphy_dev->regmap, miphy_phy->syscfg_reg[SYSCFG_PCI],
			   PCIE_CTRL_MASK, SATA_CTRL_SELECT_PCIE);

	/* MiPHY path and clocking init */
	err = FUNC3(miphy_phy, MIPHY_CTRL_DEFAULT);

	if (err) {
		FUNC0(miphy_dev->dev, "SATA phy setup failed\n");
		return err;
	}

	/* initialize miphy */
	FUNC2(miphy_phy);

	return FUNC4(miphy_phy);
}