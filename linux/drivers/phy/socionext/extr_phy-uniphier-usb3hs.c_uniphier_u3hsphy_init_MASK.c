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
typedef  scalar_t__ u32 ;
struct uniphier_u3hsphy_priv {int /*<<< orphan*/  clk_parent; int /*<<< orphan*/  rst_parent; TYPE_1__* data; scalar_t__ base; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {int nparams; int /*<<< orphan*/ * param; scalar_t__ config1; scalar_t__ config0; } ;

/* Variables and functions */
 scalar_t__ HSPHY_CFG0 ; 
 scalar_t__ HSPHY_CFG1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct uniphier_u3hsphy_priv* FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uniphier_u3hsphy_priv*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct uniphier_u3hsphy_priv*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct phy *phy)
{
	struct uniphier_u3hsphy_priv *priv = FUNC2(phy);
	u32 config0, config1;
	int i, ret;

	ret = FUNC1(priv->clk_parent);
	if (ret)
		return ret;

	ret = FUNC4(priv->rst_parent);
	if (ret)
		goto out_clk_disable;

	if (!priv->data->config0 && !priv->data->config1)
		return 0;

	config0 = priv->data->config0;
	config1 = priv->data->config1;

	ret = FUNC6(priv, &config0);
	if (ret)
		goto out_rst_assert;

	FUNC7(config0, priv->base + HSPHY_CFG0);
	FUNC7(config1, priv->base + HSPHY_CFG1);

	for (i = 0; i < priv->data->nparams; i++)
		FUNC5(priv, &priv->data->param[i]);

	return 0;

out_rst_assert:
	FUNC3(priv->rst_parent);
out_clk_disable:
	FUNC0(priv->clk_parent);

	return ret;
}