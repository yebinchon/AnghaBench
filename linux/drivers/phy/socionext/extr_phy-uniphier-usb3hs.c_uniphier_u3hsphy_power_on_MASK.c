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
struct uniphier_u3hsphy_priv {int /*<<< orphan*/  clk_ext; int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; scalar_t__ vbus; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct uniphier_u3hsphy_priv* FUNC2 (struct phy*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct phy *phy)
{
	struct uniphier_u3hsphy_priv *priv = FUNC2(phy);
	int ret;

	ret = FUNC1(priv->clk_ext);
	if (ret)
		return ret;

	ret = FUNC1(priv->clk);
	if (ret)
		goto out_clk_ext_disable;

	ret = FUNC5(priv->rst);
	if (ret)
		goto out_clk_disable;

	if (priv->vbus) {
		ret = FUNC3(priv->vbus);
		if (ret)
			goto out_rst_assert;
	}

	return 0;

out_rst_assert:
	FUNC4(priv->rst);
out_clk_disable:
	FUNC0(priv->clk);
out_clk_ext_disable:
	FUNC0(priv->clk_ext);

	return ret;
}