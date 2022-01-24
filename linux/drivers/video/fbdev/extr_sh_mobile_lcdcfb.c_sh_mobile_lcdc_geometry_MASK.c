#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct fb_videomode {unsigned long xres; unsigned long hsync_len; unsigned long left_margin; unsigned long right_margin; int yres; int vsync_len; int upper_margin; int lower_margin; } ;
struct TYPE_6__ {struct fb_videomode mode; } ;
struct sh_mobile_lcdc_chan {int ldmt1r_value; int /*<<< orphan*/  yres; int /*<<< orphan*/  xres; TYPE_4__* cfg; TYPE_2__ display; TYPE_1__* info; } ;
struct fb_var_screeninfo {int sync; } ;
struct TYPE_7__ {int ldmt2r; int ldmt3r; } ;
struct TYPE_8__ {int flags; TYPE_3__ sys_bus_cfg; } ;
struct TYPE_5__ {struct fb_var_screeninfo var; } ;

/* Variables and functions */
 int FB_SYNC_HOR_HIGH_ACT ; 
 int FB_SYNC_VERT_HIGH_ACT ; 
 int LCDC_FLAGS_DAPOL ; 
 int LCDC_FLAGS_DIPOL ; 
 int LCDC_FLAGS_DWCNT ; 
 int LCDC_FLAGS_DWPOL ; 
 int LCDC_FLAGS_HSCNT ; 
 int /*<<< orphan*/  LDHAJR ; 
 int /*<<< orphan*/  LDHCNR ; 
 int /*<<< orphan*/  LDHSYNR ; 
 int /*<<< orphan*/  LDMT1R ; 
 int LDMT1R_DAPOL ; 
 int LDMT1R_DIPOL ; 
 int LDMT1R_DWCNT ; 
 int LDMT1R_DWPOL ; 
 int LDMT1R_HPOL ; 
 int LDMT1R_HSCNT ; 
 int LDMT1R_VPOL ; 
 int /*<<< orphan*/  LDMT2R ; 
 int /*<<< orphan*/  LDMT3R ; 
 int /*<<< orphan*/  LDVLNR ; 
 int /*<<< orphan*/  LDVSYNR ; 
 int /*<<< orphan*/  FUNC0 (struct sh_mobile_lcdc_chan*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mobile_lcdc_chan*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sh_mobile_lcdc_chan *ch)
{
	const struct fb_var_screeninfo *var = &ch->info->var;
	const struct fb_videomode *mode = &ch->display.mode;
	unsigned long h_total, hsync_pos, display_h_total;
	u32 tmp;

	tmp = ch->ldmt1r_value;
	tmp |= (var->sync & FB_SYNC_VERT_HIGH_ACT) ? 0 : LDMT1R_VPOL;
	tmp |= (var->sync & FB_SYNC_HOR_HIGH_ACT) ? 0 : LDMT1R_HPOL;
	tmp |= (ch->cfg->flags & LCDC_FLAGS_DWPOL) ? LDMT1R_DWPOL : 0;
	tmp |= (ch->cfg->flags & LCDC_FLAGS_DIPOL) ? LDMT1R_DIPOL : 0;
	tmp |= (ch->cfg->flags & LCDC_FLAGS_DAPOL) ? LDMT1R_DAPOL : 0;
	tmp |= (ch->cfg->flags & LCDC_FLAGS_HSCNT) ? LDMT1R_HSCNT : 0;
	tmp |= (ch->cfg->flags & LCDC_FLAGS_DWCNT) ? LDMT1R_DWCNT : 0;
	FUNC0(ch, LDMT1R, tmp);

	/* setup SYS bus */
	FUNC0(ch, LDMT2R, ch->cfg->sys_bus_cfg.ldmt2r);
	FUNC0(ch, LDMT3R, ch->cfg->sys_bus_cfg.ldmt3r);

	/* horizontal configuration */
	h_total = mode->xres + mode->hsync_len + mode->left_margin
		+ mode->right_margin;
	tmp = h_total / 8; /* HTCN */
	tmp |= (FUNC2(mode->xres, ch->xres) / 8) << 16; /* HDCN */
	FUNC0(ch, LDHCNR, tmp);

	hsync_pos = mode->xres + mode->right_margin;
	tmp = hsync_pos / 8; /* HSYNP */
	tmp |= (mode->hsync_len / 8) << 16; /* HSYNW */
	FUNC0(ch, LDHSYNR, tmp);

	/* vertical configuration */
	tmp = mode->yres + mode->vsync_len + mode->upper_margin
	    + mode->lower_margin; /* VTLN */
	tmp |= FUNC2(mode->yres, ch->yres) << 16; /* VDLN */
	FUNC0(ch, LDVLNR, tmp);

	tmp = mode->yres + mode->lower_margin; /* VSYNP */
	tmp |= mode->vsync_len << 16; /* VSYNW */
	FUNC0(ch, LDVSYNR, tmp);

	/* Adjust horizontal synchronisation for HDMI */
	display_h_total = mode->xres + mode->hsync_len + mode->left_margin
			+ mode->right_margin;
	tmp = ((mode->xres & 7) << 24) | ((display_h_total & 7) << 16)
	    | ((mode->hsync_len & 7) << 8) | (hsync_pos & 7);
	FUNC0(ch, LDHAJR, tmp);
	FUNC1(ch, LDHAJR, tmp);
}