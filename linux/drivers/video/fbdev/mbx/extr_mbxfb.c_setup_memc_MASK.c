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
struct fb_info {int /*<<< orphan*/  screen_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  LMCFG ; 
 int LMCFG_LMA_TS ; 
 int LMCFG_LMC_DS ; 
 int LMCFG_LMC_TS ; 
 int LMCFG_LMD_TS ; 
 int /*<<< orphan*/  LMPWR ; 
 int LMPWR_MC_PWR_ACT ; 
 int /*<<< orphan*/  LMREFRESH ; 
 int /*<<< orphan*/  LMTIM ; 
 int /*<<< orphan*/  LMTYPE ; 
 int LMTYPE_BKSZ_2 ; 
 int LMTYPE_CASLAT_3 ; 
 int LMTYPE_COLSZ_8 ; 
 int LMTYPE_ROWSZ_11 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct fb_info *fbi)
{
	unsigned long tmp;
	int i;

	/* FIXME: use platform specific parameters */
	/* setup SDRAM controller */
	FUNC6((LMCFG_LMC_DS | LMCFG_LMC_TS | LMCFG_LMD_TS |
		LMCFG_LMA_TS),
	       LMCFG);

	FUNC6(LMPWR_MC_PWR_ACT, LMPWR);

	/* setup SDRAM timings */
	FUNC6((FUNC1(7) | FUNC4(3) | FUNC3(3) |
		FUNC2(9) | FUNC0(2)),
	       LMTIM);
	/* setup SDRAM refresh rate */
	FUNC6(0xc2b, LMREFRESH);
	/* setup SDRAM type parameters */
	FUNC6((LMTYPE_CASLAT_3 | LMTYPE_BKSZ_2 | LMTYPE_ROWSZ_11 |
		LMTYPE_COLSZ_8),
	       LMTYPE);
	/* enable memory controller */
	FUNC6(LMPWR_MC_PWR_ACT, LMPWR);
	/* perform dummy reads */
	for ( i = 0; i < 16; i++ ) {
		tmp = FUNC5(fbi->screen_base);
	}
}