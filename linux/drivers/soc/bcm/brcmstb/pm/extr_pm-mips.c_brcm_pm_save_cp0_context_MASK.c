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
struct brcm_pm_s3_context {int /*<<< orphan*/  sc_boot_vec; int /*<<< orphan*/ * cp0_regs; } ;

/* Variables and functions */
 size_t BOOT_VEC ; 
 size_t COMPARE ; 
 size_t CONFIG ; 
 size_t CONTEXT ; 
 size_t EBASE ; 
 size_t EDSP ; 
 size_t HWRENA ; 
 size_t MODE ; 
 size_t PGMK ; 
 size_t STATUS ; 
 size_t USER_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(struct brcm_pm_s3_context *ctx)
{
	/* Generic MIPS */
	ctx->cp0_regs[CONTEXT] = FUNC7();
	ctx->cp0_regs[USER_LOCAL] = FUNC11();
	ctx->cp0_regs[PGMK] = FUNC9();
	ctx->cp0_regs[HWRENA] = FUNC5();
	ctx->cp0_regs[COMPARE] = FUNC6();
	ctx->cp0_regs[STATUS] = FUNC10();

	/* Broadcom specific */
	ctx->cp0_regs[CONFIG] = FUNC2();
	ctx->cp0_regs[MODE] = FUNC4();
	ctx->cp0_regs[EDSP] = FUNC3();
	ctx->cp0_regs[BOOT_VEC] = FUNC1();
	ctx->cp0_regs[EBASE] = FUNC8();

	ctx->sc_boot_vec = FUNC0(0xa0);
}