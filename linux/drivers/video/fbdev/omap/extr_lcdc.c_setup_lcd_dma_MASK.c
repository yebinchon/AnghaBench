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
struct TYPE_7__ {int /*<<< orphan*/  mirror; } ;
struct omapfb_plane_struct {TYPE_3__ info; } ;
struct fb_var_screeninfo {int rotate; } ;
struct TYPE_8__ {unsigned long vram_phys; unsigned long frame_offset; scalar_t__ color_mode; int xres; int bpp; int yres; int screen_width; TYPE_2__* fbdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; TYPE_1__** fb_info; } ;
struct TYPE_5__ {struct fb_var_screeninfo var; struct omapfb_plane_struct* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ OMAPFB_COLOR_YUV420 ; 
#define  OMAP_DMA_DATA_TYPE_S16 130 
#define  OMAP_DMA_DATA_TYPE_S32 129 
#define  OMAP_DMA_DATA_TYPE_S8 128 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long,int,int,int) ; 
 TYPE_4__ lcdc ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int,int,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(void)
{
	static const int dma_elem_type[] = {
		0,
		OMAP_DMA_DATA_TYPE_S8,
		OMAP_DMA_DATA_TYPE_S16,
		0,
		OMAP_DMA_DATA_TYPE_S32,
	};
	struct omapfb_plane_struct *plane = lcdc.fbdev->fb_info[0]->par;
	struct fb_var_screeninfo *var = &lcdc.fbdev->fb_info[0]->var;
	unsigned long	src;
	int		esize, xelem, yelem;

	src = lcdc.vram_phys + lcdc.frame_offset;

	switch (var->rotate) {
	case 0:
		if (plane->info.mirror || (src & 3) ||
		    lcdc.color_mode == OMAPFB_COLOR_YUV420 ||
		    (lcdc.xres & 1))
			esize = 2;
		else
			esize = 4;
		xelem = lcdc.xres * lcdc.bpp / 8 / esize;
		yelem = lcdc.yres;
		break;
	case 90:
	case 180:
	case 270:
		if (FUNC1()) {
			FUNC0();
		}
		esize = 2;
		xelem = lcdc.yres * lcdc.bpp / 16;
		yelem = lcdc.xres;
		break;
	default:
		FUNC0();
		return;
	}
#ifdef VERBOSE
	dev_dbg(lcdc.fbdev->dev,
		 "setup_dma: src %#010lx esize %d xelem %d yelem %d\n",
		 src, esize, xelem, yelem);
#endif
	FUNC3(src, xelem, yelem, dma_elem_type[esize]);
	if (!FUNC1()) {
		int bpp = lcdc.bpp;

		/*
		 * YUV support is only for external mode when we have the
		 * YUV window embedded in a 16bpp frame buffer.
		 */
		if (lcdc.color_mode == OMAPFB_COLOR_YUV420)
			bpp = 16;
		/* Set virtual xres elem size */
		FUNC6(
			lcdc.screen_width * bpp / 8 / esize);
		/* Setup transformations */
		FUNC5(var->rotate);
		FUNC4(plane->info.mirror);
	}
	FUNC7();
}