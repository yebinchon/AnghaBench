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
struct xlr_net_priv {scalar_t__ phy_speed; int /*<<< orphan*/  port_id; int /*<<< orphan*/  base_addr; } ;
struct phy_device {scalar_t__ speed; scalar_t__ link; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_INTREG ; 
 struct xlr_net_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC2 (struct xlr_net_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xlr_net_priv*) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev)
{
	struct xlr_net_priv *priv = FUNC0(ndev);
	struct phy_device *phydev = FUNC2(priv);
	u32 intreg;

	intreg = FUNC3(priv->base_addr, R_INTREG);
	if (phydev->link) {
		if (phydev->speed != priv->phy_speed) {
			FUNC4(priv);
			FUNC1("gmac%d : Link up\n", priv->port_id);
		}
	} else {
		FUNC4(priv);
		FUNC1("gmac%d : Link down\n", priv->port_id);
	}
}