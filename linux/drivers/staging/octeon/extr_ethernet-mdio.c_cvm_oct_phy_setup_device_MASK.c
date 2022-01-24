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
struct phy_device {int dummy; } ;
struct octeon_ethernet {scalar_t__ last_link; int /*<<< orphan*/  phy_mode; int /*<<< orphan*/  of_node; } ;
struct net_device {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  cvm_oct_adjust_link ; 
 struct octeon_ethernet* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC5 (struct net_device*,struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*) ; 

int FUNC9(struct net_device *dev)
{
	struct octeon_ethernet *priv = FUNC0(dev);
	struct device_node *phy_node;
	struct phy_device *phydev = NULL;

	if (!priv->of_node)
		goto no_phy;

	phy_node = FUNC4(priv->of_node, "phy-handle", 0);
	if (!phy_node && FUNC6(priv->of_node)) {
		int rc;

		rc = FUNC7(priv->of_node);
		if (rc)
			return rc;

		phy_node = FUNC2(priv->of_node);
	}
	if (!phy_node)
		goto no_phy;

	phydev = FUNC5(dev, phy_node, cvm_oct_adjust_link, 0,
				priv->phy_mode);
	FUNC3(phy_node);

	if (!phydev)
		return -ENODEV;

	priv->last_link = 0;
	FUNC8(phydev);

	return 0;
no_phy:
	/* If there is no phy, assume a direct MAC connection and that
	 * the link is up.
	 */
	FUNC1(dev);
	return 0;
}