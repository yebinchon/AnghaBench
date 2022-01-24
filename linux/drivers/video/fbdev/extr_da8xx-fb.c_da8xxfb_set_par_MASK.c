#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int line_length; scalar_t__ smem_start; int /*<<< orphan*/  visual; } ;
struct TYPE_9__ {int bits_per_pixel; int yoffset; int xoffset; int yres; } ;
struct fb_info {TYPE_1__ fix; TYPE_5__ var; struct da8xx_fb_par* par; } ;
struct TYPE_8__ {int xres; } ;
struct TYPE_7__ {int bpp; } ;
struct da8xx_fb_par {scalar_t__ dma_end; scalar_t__ dma_start; int /*<<< orphan*/  dev; TYPE_3__ mode; TYPE_2__ cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA8XX_FRAME_WAIT ; 
 int /*<<< orphan*/  FB_VISUAL_PSEUDOCOLOR ; 
 int /*<<< orphan*/  FB_VISUAL_TRUECOLOR ; 
 int /*<<< orphan*/  LCD_DMA_FRM_BUF_BASE_ADDR_0_REG ; 
 int /*<<< orphan*/  LCD_DMA_FRM_BUF_BASE_ADDR_1_REG ; 
 int /*<<< orphan*/  LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG ; 
 int /*<<< orphan*/  LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct da8xx_fb_par*,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct fb_info *info)
{
	struct da8xx_fb_par *par = info->par;
	int ret;
	bool raster = FUNC0();

	if (raster)
		FUNC3(DA8XX_FRAME_WAIT);

	FUNC2(&par->mode, &info->var);

	par->cfg.bpp = info->var.bits_per_pixel;

	info->fix.visual = (par->cfg.bpp <= 8) ?
				FB_VISUAL_PSEUDOCOLOR : FB_VISUAL_TRUECOLOR;
	info->fix.line_length = (par->mode.xres * par->cfg.bpp) / 8;

	ret = FUNC5(par, &par->cfg, &par->mode);
	if (ret < 0) {
		FUNC1(par->dev, "lcd init failed\n");
		return ret;
	}

	par->dma_start = info->fix.smem_start +
			 info->var.yoffset * info->fix.line_length +
			 info->var.xoffset * info->var.bits_per_pixel / 8;
	par->dma_end   = par->dma_start +
			 info->var.yres * info->fix.line_length - 1;

	FUNC6(par->dma_start, LCD_DMA_FRM_BUF_BASE_ADDR_0_REG);
	FUNC6(par->dma_end, LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG);
	FUNC6(par->dma_start, LCD_DMA_FRM_BUF_BASE_ADDR_1_REG);
	FUNC6(par->dma_end, LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG);

	if (raster)
		FUNC4();

	return 0;
}