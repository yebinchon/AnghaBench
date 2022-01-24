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
struct lcd_ctrl_config {int bpp; int fdd; int /*<<< orphan*/  raster_order; int /*<<< orphan*/  fifo_th; int /*<<< orphan*/  dma_burst_sz; } ;
struct fb_videomode {int sync; scalar_t__ yres; scalar_t__ xres; int /*<<< orphan*/  right_margin; int /*<<< orphan*/  hsync_len; int /*<<< orphan*/  left_margin; int /*<<< orphan*/  lower_margin; int /*<<< orphan*/  vsync_len; int /*<<< orphan*/  upper_margin; } ;
struct da8xx_fb_par {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FB_SYNC_CLK_INVERT ; 
 int LCD_INVERT_PIXEL_CLOCK ; 
 int /*<<< orphan*/  LCD_RASTER_CTRL_REG ; 
 int /*<<< orphan*/  LCD_RASTER_TIMING_2_REG ; 
 int FUNC0 (struct da8xx_fb_par*,struct fb_videomode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct lcd_ctrl_config const*,struct fb_videomode*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct da8xx_fb_par*,unsigned int,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct da8xx_fb_par *par, const struct lcd_ctrl_config *cfg,
		struct fb_videomode *panel)
{
	u32 bpp;
	int ret = 0;

	ret = FUNC0(par, panel);
	if (ret) {
		FUNC1(par->dev, "unable to configure clock\n");
		return ret;
	}

	if (panel->sync & FB_SYNC_CLK_INVERT)
		FUNC8((FUNC7(LCD_RASTER_TIMING_2_REG) |
			LCD_INVERT_PIXEL_CLOCK), LCD_RASTER_TIMING_2_REG);
	else
		FUNC8((FUNC7(LCD_RASTER_TIMING_2_REG) &
			~LCD_INVERT_PIXEL_CLOCK), LCD_RASTER_TIMING_2_REG);

	/* Configure the DMA burst size and fifo threshold. */
	ret = FUNC3(cfg->dma_burst_sz, cfg->fifo_th);
	if (ret < 0)
		return ret;

	/* Configure the vertical and horizontal sync properties. */
	FUNC6(panel->upper_margin, panel->vsync_len,
			panel->lower_margin);
	FUNC5(panel->left_margin, panel->hsync_len,
			panel->right_margin);

	/* Configure for disply */
	ret = FUNC2(cfg, panel);
	if (ret < 0)
		return ret;

	bpp = cfg->bpp;

	if (bpp == 12)
		bpp = 16;
	ret = FUNC4(par, (unsigned int)panel->xres,
				(unsigned int)panel->yres, bpp,
				cfg->raster_order);
	if (ret < 0)
		return ret;

	/* Configure FDD */
	FUNC8((FUNC7(LCD_RASTER_CTRL_REG) & 0xfff00fff) |
		       (cfg->fdd << 12), LCD_RASTER_CTRL_REG);

	return 0;
}