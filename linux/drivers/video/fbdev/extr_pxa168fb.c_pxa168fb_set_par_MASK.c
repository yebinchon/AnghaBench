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
typedef  int u32 ;
struct pxa168fb_info {scalar_t__ pix_fmt; scalar_t__ reg_base; } ;
struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int xres_virtual; int bits_per_pixel; int yres; int xres; int left_margin; int right_margin; int upper_margin; int lower_margin; int /*<<< orphan*/  sync; } ;
struct TYPE_2__ {int line_length; int ypanstep; int /*<<< orphan*/  visual; } ;
struct fb_info {struct fb_var_screeninfo var; TYPE_1__ fix; struct pxa168fb_info* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_VISUAL_PSEUDOCOLOR ; 
 int /*<<< orphan*/  FB_VISUAL_TRUECOLOR ; 
 scalar_t__ LCD_CFG_GRA_PITCH ; 
 scalar_t__ LCD_SPU_DUMB_CTRL ; 
 scalar_t__ LCD_SPU_GRA_HPXL_VLN ; 
 scalar_t__ LCD_SPU_GZM_HPXL_VLN ; 
 scalar_t__ LCD_SPU_H_PORCH ; 
 scalar_t__ LCD_SPU_V_H_ACTIVE ; 
 scalar_t__ LCD_SPU_V_PORCH ; 
 scalar_t__ PIX_FMT_PSEUDOCOLOR ; 
 int /*<<< orphan*/  FUNC0 (struct fb_videomode*,struct fb_var_screeninfo*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa168fb_info*,struct fb_videomode*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa168fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa168fb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct fb_info *info)
{
	struct pxa168fb_info *fbi = info->par;
	struct fb_var_screeninfo *var = &info->var;
	struct fb_videomode mode;
	u32 x;

	/*
	 * Set additional mode info.
	 */
	if (fbi->pix_fmt == PIX_FMT_PSEUDOCOLOR)
		info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
	else
		info->fix.visual = FB_VISUAL_TRUECOLOR;
	info->fix.line_length = var->xres_virtual * var->bits_per_pixel / 8;
	info->fix.ypanstep = var->yres;

	/*
	 * Disable panel output while we setup the display.
	 */
	x = FUNC1(fbi->reg_base + LCD_SPU_DUMB_CTRL);
	FUNC7(x & ~1, fbi->reg_base + LCD_SPU_DUMB_CTRL);

	/*
	 * Configure global panel parameters.
	 */
	FUNC7((var->yres << 16) | var->xres,
		fbi->reg_base + LCD_SPU_V_H_ACTIVE);

	/*
	 * convet var to video mode
	 */
	FUNC0(&mode, &info->var);

	/* Calculate clock divisor. */
	FUNC2(fbi, &mode);

	/* Configure dma ctrl regs. */
	FUNC3(fbi);
	FUNC4(fbi, info->var.sync);

	/*
	 * Configure graphics DMA parameters.
	 */
	x = FUNC1(fbi->reg_base + LCD_CFG_GRA_PITCH);
	x = (x & ~0xFFFF) | ((var->xres_virtual * var->bits_per_pixel) >> 3);
	FUNC7(x, fbi->reg_base + LCD_CFG_GRA_PITCH);
	FUNC7((var->yres << 16) | var->xres,
		fbi->reg_base + LCD_SPU_GRA_HPXL_VLN);
	FUNC7((var->yres << 16) | var->xres,
		fbi->reg_base + LCD_SPU_GZM_HPXL_VLN);

	/*
	 * Configure dumb panel ctrl regs & timings.
	 */
	FUNC5(info);
	FUNC6(info);

	FUNC7((var->left_margin << 16) | var->right_margin,
			fbi->reg_base + LCD_SPU_H_PORCH);
	FUNC7((var->upper_margin << 16) | var->lower_margin,
			fbi->reg_base + LCD_SPU_V_PORCH);

	/*
	 * Re-enable panel output.
	 */
	x = FUNC1(fbi->reg_base + LCD_SPU_DUMB_CTRL);
	FUNC7(x | 1, fbi->reg_base + LCD_SPU_DUMB_CTRL);

	return 0;
}