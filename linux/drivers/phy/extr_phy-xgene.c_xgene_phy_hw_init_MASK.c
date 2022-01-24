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
struct xgene_phy_ctx {int /*<<< orphan*/  dev; int /*<<< orphan*/  clk; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_EXT_DIFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_LANE ; 
 int /*<<< orphan*/  SSC_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct xgene_phy_ctx* FUNC5 (struct phy*) ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_phy_ctx*,int) ; 
 int FUNC7 (struct xgene_phy_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct phy *phy)
{
	struct xgene_phy_ctx *ctx = FUNC5(phy);
	int rc;
	int i;

	rc = FUNC7(ctx, CLK_EXT_DIFF, SSC_DISABLE);
	if (rc) {
		FUNC4(ctx->dev, "PHY initialize failed %d\n", rc);
		return rc;
	}

	/* Setup clock properly after PHY configuration */
	if (!FUNC0(ctx->clk)) {
		/* HW requires an toggle of the clock */
		FUNC2(ctx->clk);
		FUNC1(ctx->clk);
		FUNC2(ctx->clk);
	}

	/* Compute average value */
	for (i = 0; i < MAX_LANE; i++)
		FUNC6(ctx, i);

	FUNC3(ctx->dev, "PHY initialized\n");
	return 0;
}