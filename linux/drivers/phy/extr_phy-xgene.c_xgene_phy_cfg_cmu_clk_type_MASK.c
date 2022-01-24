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
typedef  int u32 ;
struct xgene_phy_ctx {int /*<<< orphan*/  dev; } ;
typedef  enum cmu_type_t { ____Placeholder_cmu_type_t } cmu_type_t ;
typedef  enum clk_type_t { ____Placeholder_clk_type_t } clk_type_t ;

/* Variables and functions */
 int CLK_EXT_DIFF ; 
 int CLK_INT_DIFF ; 
 int CLK_INT_SING ; 
 int /*<<< orphan*/  CMU_REG0 ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  CMU_REG1 ; 
 int /*<<< orphan*/  CMU_REG12 ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  CMU_REG13 ; 
 int /*<<< orphan*/  CMU_REG14 ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(struct xgene_phy_ctx *ctx,
				       enum cmu_type_t cmu_type,
				       enum clk_type_t clk_type)
{
	u32 val;

	/* Set the reset sequence delay for TX ready assertion */
	FUNC3(ctx, cmu_type, CMU_REG12, &val);
	val = FUNC1(val, 0x1);
	FUNC4(ctx, cmu_type, CMU_REG12, val);
	/* Set the programmable stage delays between various enable stages */
	FUNC4(ctx, cmu_type, CMU_REG13, 0x0222);
	FUNC4(ctx, cmu_type, CMU_REG14, 0x2225);

	/* Configure clock type */
	if (clk_type == CLK_EXT_DIFF) {
		/* Select external clock mux */
		FUNC3(ctx, cmu_type, CMU_REG0, &val);
		val = FUNC0(val, 0x0);
		FUNC4(ctx, cmu_type, CMU_REG0, val);
		/* Select CMOS as reference clock  */
		FUNC3(ctx, cmu_type, CMU_REG1, &val);
		val = FUNC2(val, 0x0);
		FUNC4(ctx, cmu_type, CMU_REG1, val);
		FUNC5(ctx->dev, "Set external reference clock\n");
	} else if (clk_type == CLK_INT_DIFF) {
		/* Select internal clock mux */
		FUNC3(ctx, cmu_type, CMU_REG0, &val);
		val = FUNC0(val, 0x1);
		FUNC4(ctx, cmu_type, CMU_REG0, val);
		/* Select CMOS as reference clock  */
		FUNC3(ctx, cmu_type, CMU_REG1, &val);
		val = FUNC2(val, 0x1);
		FUNC4(ctx, cmu_type, CMU_REG1, val);
		FUNC5(ctx->dev, "Set internal reference clock\n");
	} else if (clk_type == CLK_INT_SING) {
		/*
		 * NOTE: This clock type is NOT support for controller
		 *	 whose internal clock shared in the PCIe controller
		 *
		 * Select internal clock mux
		 */
		FUNC3(ctx, cmu_type, CMU_REG1, &val);
		val = FUNC2(val, 0x1);
		FUNC4(ctx, cmu_type, CMU_REG1, val);
		/* Select CML as reference clock */
		FUNC3(ctx, cmu_type, CMU_REG1, &val);
		val = FUNC2(val, 0x0);
		FUNC4(ctx, cmu_type, CMU_REG1, val);
		FUNC5(ctx->dev,
			"Set internal single ended reference clock\n");
	}
}