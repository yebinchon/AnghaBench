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
typedef  int u32 ;
struct fb_info {scalar_t__ par; } ;
struct atyfb_par {int dummy; } ;

/* Variables and functions */
 int CRTC_EXT_DISP_EN ; 
 scalar_t__ CRTC_GEN_CNTL ; 
 scalar_t__ DAC_REGS ; 
 int /*<<< orphan*/  FUNC0 (struct atyfb_par*) ; 
 char FUNC1 (scalar_t__,struct atyfb_par*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char,struct atyfb_par*) ; 

__attribute__((used)) static void FUNC3(const struct fb_info *info,
			     const union aty_pll *pll)
{
	struct atyfb_par *par = (struct atyfb_par *) info->par;
	u32 program_bits;
	u32 locationAddr;

	char old_crtc_ext_disp;

	old_crtc_ext_disp = FUNC1(CRTC_GEN_CNTL + 3, par);
	FUNC2(CRTC_GEN_CNTL + 3,
		 old_crtc_ext_disp | (CRTC_EXT_DISP_EN >> 24), par);

	program_bits = pll->ics2595.program_bits;
	locationAddr = pll->ics2595.locationAddr;

	/* Program clock */
	FUNC0(par);

	(void) FUNC1(DAC_REGS + 2, par);
	FUNC2(DAC_REGS + 2, (locationAddr << 1) + 0x20, par);
	FUNC2(DAC_REGS + 2, 0, par);
	FUNC2(DAC_REGS + 2, (program_bits & 0xFF00) >> 8, par);
	FUNC2(DAC_REGS + 2, (program_bits & 0xFF), par);

	(void) FUNC1(DAC_REGS, par);	/* Clear DAC Counter */
	FUNC2(CRTC_GEN_CNTL + 3, old_crtc_ext_disp, par);
	return;
}