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
struct spear1310_miphy_priv {scalar_t__ mode; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 scalar_t__ PCIE ; 
 struct spear1310_miphy_priv* FUNC0 (struct phy*) ; 
 int FUNC1 (struct spear1310_miphy_priv*) ; 

__attribute__((used)) static int FUNC2(struct phy *phy)
{
	struct spear1310_miphy_priv *priv = FUNC0(phy);
	int ret = 0;

	if (priv->mode == PCIE)
		ret = FUNC1(priv);

	return ret;
}