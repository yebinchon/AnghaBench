#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {TYPE_1__* feat; int /*<<< orphan*/  core_clk_rate; } ;
struct TYPE_3__ {scalar_t__ mstandby_workaround; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPC_CONFIG ; 
 int /*<<< orphan*/  DISPC_DIVISOR ; 
 int /*<<< orphan*/  DISPC_MSTANDBY_CTRL ; 
 int /*<<< orphan*/  FEAT_CORE_CLK_DIV ; 
 int /*<<< orphan*/  FEAT_FUNCGATED ; 
 int /*<<< orphan*/  FEAT_MFLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  OMAP_DSS_LOAD_FRAME_ONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 TYPE_2__ dispc ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void)
{
	u32 l;

	/* Exclusively enable DISPC_CORE_CLK and set divider to 1 */
	if (FUNC11(FEAT_CORE_CLK_DIV)) {
		l = FUNC7(DISPC_DIVISOR);
		/* Use DISPC_DIVISOR.LCD, instead of DISPC_DIVISOR1.LCD */
		l = FUNC0(l, 1, 0, 0);
		l = FUNC0(l, 1, 23, 16);
		FUNC10(DISPC_DIVISOR, l);

		dispc.core_clk_rate = FUNC3();
	}

	/* FUNCGATED */
	if (FUNC11(FEAT_FUNCGATED))
		FUNC1(DISPC_CONFIG, 1, 9, 9);

	FUNC9();

	FUNC8(OMAP_DSS_LOAD_FRAME_ONLY);

	FUNC4();

	FUNC2();

	FUNC6();

	if (dispc.feat->mstandby_workaround)
		FUNC1(DISPC_MSTANDBY_CTRL, 1, 0, 0);

	if (FUNC11(FEAT_MFLAG))
		FUNC5();
}