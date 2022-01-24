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
typedef  int /*<<< orphan*/  u32 ;
struct xgene_phy_ctx {int /*<<< orphan*/  dev; } ;
typedef  enum cmu_type_t { ____Placeholder_cmu_type_t } cmu_type_t ;
typedef  enum clk_type_t { ____Placeholder_clk_type_t } clk_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMU_REG0 ; 
 int /*<<< orphan*/  CMU_REG0_PDOWN_MASK ; 
 int /*<<< orphan*/  CMU_REG16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CMU_REG32 ; 
 int /*<<< orphan*/  CMU_REG32_FORCE_VCOCAL_START_MASK ; 
 int PHY_CMU ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct xgene_phy_ctx *ctx,
				     enum cmu_type_t cmu_type,
				     enum clk_type_t clk_type)
{
	u32 val;

	FUNC4(ctx->dev, "Reset VCO and re-start again\n");
	if (cmu_type == PHY_CMU) {
		FUNC1(ctx, cmu_type, CMU_REG16, &val);
		val = FUNC0(val, 0x7);
		FUNC3(ctx, cmu_type, CMU_REG16, val);
	}

	FUNC2(ctx, cmu_type, CMU_REG0, CMU_REG0_PDOWN_MASK);
	FUNC2(ctx, cmu_type, CMU_REG32,
		       CMU_REG32_FORCE_VCOCAL_START_MASK);
}