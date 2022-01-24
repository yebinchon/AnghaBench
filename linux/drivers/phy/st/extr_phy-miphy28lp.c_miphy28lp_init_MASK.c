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
struct miphy28lp_phy {int type; struct miphy28lp_dev* phydev; } ;
struct miphy28lp_dev {int /*<<< orphan*/  miphy_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PHY_TYPE_PCIE 130 
#define  PHY_TYPE_SATA 129 
#define  PHY_TYPE_USB3 128 
 int FUNC0 (struct miphy28lp_phy*) ; 
 int FUNC1 (struct miphy28lp_phy*) ; 
 int FUNC2 (struct miphy28lp_phy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct miphy28lp_phy* FUNC5 (struct phy*) ; 

__attribute__((used)) static int FUNC6(struct phy *phy)
{
	struct miphy28lp_phy *miphy_phy = FUNC5(phy);
	struct miphy28lp_dev *miphy_dev = miphy_phy->phydev;
	int ret;

	FUNC3(&miphy_dev->miphy_mutex);

	switch (miphy_phy->type) {

	case PHY_TYPE_SATA:
		ret = FUNC1(miphy_phy);
		break;
	case PHY_TYPE_PCIE:
		ret = FUNC0(miphy_phy);
		break;
	case PHY_TYPE_USB3:
		ret = FUNC2(miphy_phy);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	FUNC4(&miphy_dev->miphy_mutex);

	return ret;
}