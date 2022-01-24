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
typedef  int u16 ;
struct TYPE_2__ {int bits_per_pixel; int xres; } ;
struct fb_info {int /*<<< orphan*/  par; TYPE_1__ var; } ;
struct fb_copyarea {int sx; int sy; int dx; int dy; int width; int height; } ;

/* Variables and functions */
 int /*<<< orphan*/  S1DREG_BBLT_CC_EXP ; 
 int /*<<< orphan*/  S1DREG_BBLT_CTL0 ; 
 int /*<<< orphan*/  S1DREG_BBLT_CTL1 ; 
 int /*<<< orphan*/  S1DREG_BBLT_DST_START0 ; 
 int /*<<< orphan*/  S1DREG_BBLT_DST_START1 ; 
 int /*<<< orphan*/  S1DREG_BBLT_DST_START2 ; 
 int /*<<< orphan*/  S1DREG_BBLT_HEIGHT0 ; 
 int /*<<< orphan*/  S1DREG_BBLT_HEIGHT1 ; 
 int /*<<< orphan*/  S1DREG_BBLT_MEM_OFF0 ; 
 int /*<<< orphan*/  S1DREG_BBLT_MEM_OFF1 ; 
 int /*<<< orphan*/  S1DREG_BBLT_OP ; 
 int /*<<< orphan*/  S1DREG_BBLT_SRC_START0 ; 
 int /*<<< orphan*/  S1DREG_BBLT_SRC_START1 ; 
 int /*<<< orphan*/  S1DREG_BBLT_SRC_START2 ; 
 int /*<<< orphan*/  S1DREG_BBLT_WIDTH0 ; 
 int /*<<< orphan*/  S1DREG_BBLT_WIDTH1 ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  s1d13xxxfb_bitblt_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct fb_info *info, const struct fb_copyarea *area)
{
	u32 dst, src;
	u32 stride;
	u16 reverse = 0;
	u16 sx = area->sx, sy = area->sy;
	u16 dx = area->dx, dy = area->dy;
	u16 width = area->width, height = area->height;
	u16 bpp;

	FUNC3(&s1d13xxxfb_bitblt_lock);

	/* bytes per xres line */
	bpp = (info->var.bits_per_pixel >> 3);
	stride = bpp * info->var.xres;

	/* reverse, calculate the last pixel in rectangle */
	if ((dy > sy) || ((dy == sy) && (dx >= sx))) {
		dst = (((dy + height - 1) * stride) + (bpp * (dx + width - 1)));
		src = (((sy + height - 1) * stride) + (bpp * (sx + width - 1)));
		reverse = 1;
	/* not reverse, calculate the first pixel in rectangle */
	} else { /* (y * xres) + (bpp * x) */
		dst = (dy * stride) + (bpp * dx);
		src = (sy * stride) + (bpp * sx);
	}

	/* set source address */
	FUNC2(info->par, S1DREG_BBLT_SRC_START0, (src & 0xff));
	FUNC2(info->par, S1DREG_BBLT_SRC_START1, (src >> 8) & 0x00ff);
	FUNC2(info->par, S1DREG_BBLT_SRC_START2, (src >> 16) & 0x00ff);

	/* set destination address */
	FUNC2(info->par, S1DREG_BBLT_DST_START0, (dst & 0xff));
	FUNC2(info->par, S1DREG_BBLT_DST_START1, (dst >> 8) & 0x00ff);
	FUNC2(info->par, S1DREG_BBLT_DST_START2, (dst >> 16) & 0x00ff);

	/* program height and width */
	FUNC2(info->par, S1DREG_BBLT_WIDTH0, (width & 0xff) - 1);
	FUNC2(info->par, S1DREG_BBLT_WIDTH1, (width >> 8));

	FUNC2(info->par, S1DREG_BBLT_HEIGHT0, (height & 0xff) - 1);
	FUNC2(info->par, S1DREG_BBLT_HEIGHT1, (height >> 8));

	/* negative direction ROP */
	if (reverse == 1) {
		FUNC1("(copyarea) negative rop\n");
		FUNC2(info->par, S1DREG_BBLT_OP, 0x03);
	} else /* positive direction ROP */ {
		FUNC2(info->par, S1DREG_BBLT_OP, 0x02);
		FUNC1("(copyarea) positive rop\n");
	}

	/* set for rectangel mode and not linear */
	FUNC2(info->par, S1DREG_BBLT_CTL0, 0x0);

	/* setup the bpp 1 = 16bpp, 0 = 8bpp*/
	FUNC2(info->par, S1DREG_BBLT_CTL1, (bpp >> 1));

	/* set words per xres */
	FUNC2(info->par, S1DREG_BBLT_MEM_OFF0, (stride >> 1) & 0xff);
	FUNC2(info->par, S1DREG_BBLT_MEM_OFF1, (stride >> 9));

	FUNC1("(copyarea) dx=%d, dy=%d\n", dx, dy);
	FUNC1("(copyarea) sx=%d, sy=%d\n", sx, sy);
	FUNC1("(copyarea) width=%d, height=%d\n", width - 1, height - 1);
	FUNC1("(copyarea) stride=%d\n", stride);
	FUNC1("(copyarea) bpp=%d=0x0%d, mem_offset1=%d, mem_offset2=%d\n", bpp, (bpp >> 1),
		(stride >> 1) & 0xff, stride >> 9);

	FUNC2(info->par, S1DREG_BBLT_CC_EXP, 0x0c);

	/* initialize the engine */
	FUNC2(info->par, S1DREG_BBLT_CTL0, 0x80);

	/* wait to complete */
	FUNC0(info, 0x80, 8000);

	FUNC4(&s1d13xxxfb_bitblt_lock);
}