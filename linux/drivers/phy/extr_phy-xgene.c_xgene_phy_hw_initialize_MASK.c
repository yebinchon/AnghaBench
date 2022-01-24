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
struct xgene_phy_ctx {scalar_t__ mode; int /*<<< orphan*/  dev; } ;
typedef  enum clk_type_t { ____Placeholder_clk_type_t } clk_type_t ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ MODE_SATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC2 (struct xgene_phy_ctx*,int,int) ; 

__attribute__((used)) static int FUNC3(struct xgene_phy_ctx *ctx,
				   enum clk_type_t clk_type,
				   int ssc_enable)
{
	int rc;

	FUNC0(ctx->dev, "PHY init clk type %d\n", clk_type);

	if (ctx->mode == MODE_SATA) {
		rc = FUNC2(ctx, clk_type, ssc_enable);
		if (rc)
			return rc;
	} else {
		FUNC1(ctx->dev, "Un-supported customer pin mode %d\n",
			ctx->mode);
		return -ENODEV;
	}

	return 0;
}