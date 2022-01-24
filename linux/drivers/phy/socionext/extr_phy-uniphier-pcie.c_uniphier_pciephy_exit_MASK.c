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
struct uniphier_pciephy_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct uniphier_pciephy_priv* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uniphier_pciephy_priv*) ; 

__attribute__((used)) static int FUNC4(struct phy *phy)
{
	struct uniphier_pciephy_priv *priv = FUNC1(phy);

	FUNC3(priv);
	FUNC2(priv->rst);
	FUNC0(priv->clk);

	return 0;
}