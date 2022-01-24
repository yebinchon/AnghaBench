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
struct mvebu_comphy_priv {int /*<<< orphan*/ * axi_clk; int /*<<< orphan*/ * mg_core_clk; int /*<<< orphan*/ * mg_domain_clk; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct mvebu_comphy_priv *priv)
{
	int ret;

	priv->mg_domain_clk = FUNC4(priv->dev, "mg_clk");
	if (FUNC0(priv->mg_domain_clk))
		return FUNC1(priv->mg_domain_clk);

	ret = FUNC3(priv->mg_domain_clk);
	if (ret < 0)
		return ret;

	priv->mg_core_clk = FUNC4(priv->dev, "mg_core_clk");
	if (FUNC0(priv->mg_core_clk)) {
		ret = FUNC1(priv->mg_core_clk);
		goto dis_mg_domain_clk;
	}

	ret = FUNC3(priv->mg_core_clk);
	if (ret < 0)
		goto dis_mg_domain_clk;

	priv->axi_clk = FUNC4(priv->dev, "axi_clk");
	if (FUNC0(priv->axi_clk)) {
		ret = FUNC1(priv->axi_clk);
		goto dis_mg_core_clk;
	}

	ret = FUNC3(priv->axi_clk);
	if (ret < 0)
		goto dis_mg_core_clk;

	return 0;

dis_mg_core_clk:
	FUNC2(priv->mg_core_clk);

dis_mg_domain_clk:
	FUNC2(priv->mg_domain_clk);

	priv->mg_domain_clk = NULL;
	priv->mg_core_clk = NULL;
	priv->axi_clk = NULL;

	return ret;
}