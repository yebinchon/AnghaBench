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
struct xgene_phy_ctx {int dummy; } ;
typedef  enum cmu_type_t { ____Placeholder_cmu_type_t } cmu_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMU_REG32 ; 
 int /*<<< orphan*/  CMU_REG32_FORCE_VCOCAL_START_MASK ; 
 int /*<<< orphan*/  CMU_REG35 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CMU_REG36 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CMU_REG5 ; 
 int /*<<< orphan*/  CMU_REG5_PLL_RESETB_MASK ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct xgene_phy_ctx *ctx,
				 enum cmu_type_t cmu_type)
{
	u32 val;

	/* Set SSC modulation value */
	FUNC5(ctx, cmu_type, CMU_REG35, &val);
	val = FUNC0(val, 98);
	FUNC8(ctx, cmu_type, CMU_REG35, val);

	/* Enable SSC, set vertical step and DSM value */
	FUNC5(ctx, cmu_type, CMU_REG36, &val);
	val = FUNC3(val, 30);
	val = FUNC2(val, 1);
	val = FUNC1(val, 1);
	FUNC8(ctx, cmu_type, CMU_REG36, val);

	/* Reset the PLL */
	FUNC4(ctx, cmu_type, CMU_REG5, CMU_REG5_PLL_RESETB_MASK);
	FUNC6(ctx, cmu_type, CMU_REG5, CMU_REG5_PLL_RESETB_MASK);

	/* Force VCO calibration to restart */
	FUNC7(ctx, cmu_type, CMU_REG32,
		       CMU_REG32_FORCE_VCOCAL_START_MASK);
}