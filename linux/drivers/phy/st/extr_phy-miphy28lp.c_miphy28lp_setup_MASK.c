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
struct miphy28lp_phy {int /*<<< orphan*/  miphy_rst; int /*<<< orphan*/ * syscfg_reg; scalar_t__ osc_force_ext; struct miphy28lp_dev* phydev; } ;
struct miphy28lp_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MIPHY_CTRL_MASK ; 
 int /*<<< orphan*/  MIPHY_OSC_FORCE_EXT ; 
 size_t SYSCFG_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct miphy28lp_phy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct miphy28lp_phy *miphy_phy, u32 miphy_val)
{
	int err;
	struct miphy28lp_dev *miphy_dev = miphy_phy->phydev;

	if (!miphy_phy->syscfg_reg[SYSCFG_CTRL])
		return -EINVAL;

	err = FUNC3(miphy_phy->miphy_rst);
	if (err) {
		FUNC0(miphy_dev->dev, "unable to bring out of miphy reset\n");
		return err;
	}

	if (miphy_phy->osc_force_ext)
		miphy_val |= MIPHY_OSC_FORCE_EXT;

	FUNC2(miphy_dev->regmap,
			   miphy_phy->syscfg_reg[SYSCFG_CTRL],
			   MIPHY_CTRL_MASK, miphy_val);

	err = FUNC4(miphy_phy->miphy_rst);
	if (err) {
		FUNC0(miphy_dev->dev, "unable to bring out of miphy reset\n");
		return err;
	}

	return FUNC1(miphy_phy);
}