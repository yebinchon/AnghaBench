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
struct TYPE_2__ {int program_bits; int locationAddr; } ;
union aty_pll {TYPE_1__ ics2595; } ;
typedef  int u8 ;
typedef  int u32 ;
struct fb_info {scalar_t__ par; } ;
struct atyfb_par {scalar_t__ clk_wr_offset; } ;

/* Variables and functions */
 scalar_t__ CLOCK_CNTL ; 
 int CLOCK_STROBE ; 
 int CRTC_EXT_DISP_EN ; 
 scalar_t__ CRTC_GEN_CNTL ; 
 scalar_t__ DAC_REGS ; 
 int /*<<< orphan*/  FUNC0 (int,struct atyfb_par*) ; 
 int /*<<< orphan*/  FUNC1 (struct atyfb_par*) ; 
 int FUNC2 (scalar_t__,struct atyfb_par*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,struct atyfb_par*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(const struct fb_info *info,
			     const union aty_pll *pll)
{
	struct atyfb_par *par = (struct atyfb_par *) info->par;
	u32 program_bits;
	u32 locationAddr;

	u32 i;

	u8 old_clock_cntl;
	u8 old_crtc_ext_disp;

	old_clock_cntl = FUNC2(CLOCK_CNTL, par);
	FUNC3(CLOCK_CNTL + par->clk_wr_offset, 0, par);

	old_crtc_ext_disp = FUNC2(CRTC_GEN_CNTL + 3, par);
	FUNC3(CRTC_GEN_CNTL + 3,
		 old_crtc_ext_disp | (CRTC_EXT_DISP_EN >> 24), par);

	FUNC4(15);		/* delay for 50 (15) ms */

	program_bits = pll->ics2595.program_bits;
	locationAddr = pll->ics2595.locationAddr;

	/* Program the clock chip */
	FUNC3(CLOCK_CNTL + par->clk_wr_offset, 0, par);	/* Strobe = 0 */
	FUNC1(par);
	FUNC3(CLOCK_CNTL + par->clk_wr_offset, 1, par);	/* Strobe = 0 */
	FUNC1(par);

	FUNC0(1, par);	/* Send start bits */
	FUNC0(0, par);	/* Start bit */
	FUNC0(0, par);	/* Read / ~Write */

	for (i = 0; i < 5; i++) {	/* Location 0..4 */
		FUNC0(locationAddr & 1, par);
		locationAddr >>= 1;
	}

	for (i = 0; i < 8 + 1 + 2 + 2; i++) {
		FUNC0(program_bits & 1, par);
		program_bits >>= 1;
	}

	FUNC4(1);		/* delay for 1 ms */

	(void) FUNC2(DAC_REGS, par);	/* Clear DAC Counter */
	FUNC3(CRTC_GEN_CNTL + 3, old_crtc_ext_disp, par);
	FUNC3(CLOCK_CNTL + par->clk_wr_offset,
		 old_clock_cntl | CLOCK_STROBE, par);

	FUNC4(50);		/* delay for 50 (15) ms */
	FUNC3(CLOCK_CNTL + par->clk_wr_offset,
		 ((pll->ics2595.locationAddr & 0x0F) | CLOCK_STROBE), par);
	return;
}