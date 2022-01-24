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
struct uniphier_u3ssphy_priv {int /*<<< orphan*/  clk_ext; int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; scalar_t__ vbus; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct uniphier_u3ssphy_priv* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct phy *phy)
{
	struct uniphier_u3ssphy_priv *priv = FUNC1(phy);

	if (priv->vbus)
		FUNC2(priv->vbus);

	FUNC3(priv->rst);
	FUNC0(priv->clk);
	FUNC0(priv->clk_ext);

	return 0;
}