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
typedef  int u32 ;
struct xlr_net_priv {int dummy; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct xlr_net_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 
 int FUNC3 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct phy_device* FUNC5 (struct xlr_net_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct xlr_net_priv*) ; 

__attribute__((used)) static int FUNC7(struct net_device *ndev)
{
	u32 err;
	struct xlr_net_priv *priv = FUNC0(ndev);
	struct phy_device *phydev = FUNC5(priv);

	/* schedule a link state check */
	FUNC2(phydev);

	err = FUNC3(phydev);
	if (err) {
		FUNC4("Autoneg failed\n");
		return err;
	}
	/* Setup the speed from PHY to internal reg*/
	FUNC6(priv);

	FUNC1(ndev);

	return 0;
}