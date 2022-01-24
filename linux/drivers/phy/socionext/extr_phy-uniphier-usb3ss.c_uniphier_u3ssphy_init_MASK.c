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
struct uniphier_u3ssphy_priv {int /*<<< orphan*/  clk_parent; int /*<<< orphan*/  clk_parent_gio; int /*<<< orphan*/  rst_parent; TYPE_1__* data; int /*<<< orphan*/  rst_parent_gio; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {int nparams; int /*<<< orphan*/ * param; scalar_t__ is_legacy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct uniphier_u3ssphy_priv* FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uniphier_u3ssphy_priv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct phy *phy)
{
	struct uniphier_u3ssphy_priv *priv = FUNC2(phy);
	int i, ret;

	ret = FUNC1(priv->clk_parent);
	if (ret)
		return ret;

	ret = FUNC1(priv->clk_parent_gio);
	if (ret)
		goto out_clk_disable;

	ret = FUNC4(priv->rst_parent);
	if (ret)
		goto out_clk_gio_disable;

	ret = FUNC4(priv->rst_parent_gio);
	if (ret)
		goto out_rst_assert;

	if (priv->data->is_legacy)
		return 0;

	for (i = 0; i < priv->data->nparams; i++)
		FUNC5(priv, &priv->data->param[i]);

	return 0;

out_rst_assert:
	FUNC3(priv->rst_parent);
out_clk_gio_disable:
	FUNC0(priv->clk_parent_gio);
out_clk_disable:
	FUNC0(priv->clk_parent);

	return ret;
}