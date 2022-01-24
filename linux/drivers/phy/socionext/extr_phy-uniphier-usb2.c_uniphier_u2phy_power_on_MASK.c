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
struct uniphier_u2phy_priv {scalar_t__ vbus; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 struct uniphier_u2phy_priv* FUNC0 (struct phy*) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct phy *phy)
{
	struct uniphier_u2phy_priv *priv = FUNC0(phy);
	int ret = 0;

	if (priv->vbus)
		ret = FUNC1(priv->vbus);

	return ret;
}