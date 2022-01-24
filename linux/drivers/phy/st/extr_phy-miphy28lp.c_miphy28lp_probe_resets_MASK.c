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
struct miphy28lp_phy {int /*<<< orphan*/  miphy_rst; struct miphy28lp_dev* phydev; } ;
struct miphy28lp_dev {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device_node *node,
				  struct miphy28lp_phy *miphy_phy)
{
	struct miphy28lp_dev *miphy_dev = miphy_phy->phydev;
	int err;

	miphy_phy->miphy_rst =
		FUNC3(node, "miphy-sw-rst");

	if (FUNC0(miphy_phy->miphy_rst)) {
		FUNC2(miphy_dev->dev,
				"miphy soft reset control not defined\n");
		return FUNC1(miphy_phy->miphy_rst);
	}

	err = FUNC4(miphy_phy->miphy_rst);
	if (err) {
		FUNC2(miphy_dev->dev, "unable to bring out of miphy reset\n");
		return err;
	}

	return 0;
}