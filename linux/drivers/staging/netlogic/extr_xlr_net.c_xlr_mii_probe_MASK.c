#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xlr_net_priv {TYPE_1__* nd; int /*<<< orphan*/  ndev; int /*<<< orphan*/  phy_addr; } ;
struct phy_device {int supported; int advertising; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_interface; } ;

/* Variables and functions */
 int ADVERTISED_1000baseT_Full ; 
 int ADVERTISED_100baseT_Full ; 
 int ADVERTISED_100baseT_Half ; 
 int ADVERTISED_10baseT_Full ; 
 int ADVERTISED_10baseT_Half ; 
 int ADVERTISED_Autoneg ; 
 int ADVERTISED_MII ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 
 struct phy_device* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct phy_device* FUNC6 (struct xlr_net_priv*) ; 
 int /*<<< orphan*/  xlr_gmac_link_adjust ; 

__attribute__((used)) static int FUNC7(struct xlr_net_priv *priv)
{
	struct phy_device *phydev = FUNC6(priv);

	if (!phydev) {
		FUNC5("no PHY found on phy_addr %d\n", priv->phy_addr);
		return -ENODEV;
	}

	/* Attach MAC to PHY */
	phydev = FUNC3(priv->ndev, FUNC4(phydev),
			     xlr_gmac_link_adjust, priv->nd->phy_interface);

	if (FUNC0(phydev)) {
		FUNC5("could not attach PHY\n");
		return FUNC1(phydev);
	}
	phydev->supported &= (ADVERTISED_10baseT_Full
				| ADVERTISED_10baseT_Half
				| ADVERTISED_100baseT_Full
				| ADVERTISED_100baseT_Half
				| ADVERTISED_1000baseT_Full
				| ADVERTISED_Autoneg
				| ADVERTISED_MII);

	phydev->advertising = phydev->supported;
	FUNC2(phydev);
	return 0;
}