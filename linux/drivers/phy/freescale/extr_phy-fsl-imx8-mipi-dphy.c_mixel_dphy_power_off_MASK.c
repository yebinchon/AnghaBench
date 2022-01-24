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
struct mixel_dphy_priv {int /*<<< orphan*/  phy_ref_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPHY_PD_DPHY ; 
 int /*<<< orphan*/  DPHY_PD_PLL ; 
 int /*<<< orphan*/  PWR_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mixel_dphy_priv* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct mixel_dphy_priv *priv = FUNC1(phy);

	FUNC2(phy, PWR_OFF, DPHY_PD_PLL);
	FUNC2(phy, PWR_OFF, DPHY_PD_DPHY);

	FUNC0(priv->phy_ref_clk);

	return 0;
}