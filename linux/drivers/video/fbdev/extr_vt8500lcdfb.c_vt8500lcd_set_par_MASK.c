#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vt8500lcd_info {scalar_t__ regbase; } ;
struct TYPE_12__ {int length; scalar_t__ msb_right; scalar_t__ offset; } ;
struct TYPE_10__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_9__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_8__ {scalar_t__ msb_right; scalar_t__ length; scalar_t__ offset; } ;
struct TYPE_11__ {int bits_per_pixel; int xres_virtual; int hsync_len; int left_margin; int xres; int right_margin; int vsync_len; int upper_margin; int yres; int lower_margin; TYPE_6__ blue; TYPE_4__ green; TYPE_3__ red; TYPE_2__ transp; } ;
struct TYPE_7__ {int line_length; int /*<<< orphan*/  visual; } ;
struct fb_info {TYPE_5__ var; TYPE_1__ fix; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FB_VISUAL_PSEUDOCOLOR ; 
 int /*<<< orphan*/  FB_VISUAL_TRUECOLOR ; 
 int* bpp_values ; 
 int FUNC0 (scalar_t__) ; 
 struct vt8500lcd_info* FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct fb_info *info)
{
	struct vt8500lcd_info *fbi = FUNC1(info);
	int reg_bpp = 5; /* 16bpp */
	int i;
	unsigned long control0;

	if (!fbi)
		return -EINVAL;

	if (info->var.bits_per_pixel <= 8) {
		/* palettized */
		info->var.red.offset    = 0;
		info->var.red.length    = info->var.bits_per_pixel;
		info->var.red.msb_right = 0;

		info->var.green.offset  = 0;
		info->var.green.length  = info->var.bits_per_pixel;
		info->var.green.msb_right = 0;

		info->var.blue.offset   = 0;
		info->var.blue.length   = info->var.bits_per_pixel;
		info->var.blue.msb_right = 0;

		info->var.transp.offset = 0;
		info->var.transp.length = 0;
		info->var.transp.msb_right = 0;

		info->fix.visual = FB_VISUAL_PSEUDOCOLOR;
		info->fix.line_length = info->var.xres_virtual /
						(8/info->var.bits_per_pixel);
	} else {
		/* non-palettized */
		info->var.transp.offset = 0;
		info->var.transp.length = 0;
		info->var.transp.msb_right = 0;

		if (info->var.bits_per_pixel == 16) {
			/* RGB565 */
			info->var.red.offset = 11;
			info->var.red.length = 5;
			info->var.red.msb_right = 0;
			info->var.green.offset = 5;
			info->var.green.length = 6;
			info->var.green.msb_right = 0;
			info->var.blue.offset = 0;
			info->var.blue.length = 5;
			info->var.blue.msb_right = 0;
		} else {
			/* Equal depths per channel */
			info->var.red.offset = info->var.bits_per_pixel
							* 2 / 3;
			info->var.red.length = info->var.bits_per_pixel / 3;
			info->var.red.msb_right = 0;
			info->var.green.offset = info->var.bits_per_pixel / 3;
			info->var.green.length = info->var.bits_per_pixel / 3;
			info->var.green.msb_right = 0;
			info->var.blue.offset = 0;
			info->var.blue.length = info->var.bits_per_pixel / 3;
			info->var.blue.msb_right = 0;
		}

		info->fix.visual = FB_VISUAL_TRUECOLOR;
		info->fix.line_length = info->var.bits_per_pixel > 16 ?
					info->var.xres_virtual << 2 :
					info->var.xres_virtual << 1;
	}

	for (i = 0; i < 8; i++) {
		if (bpp_values[i] == info->var.bits_per_pixel)
			reg_bpp = i;
	}

	control0 = FUNC0(fbi->regbase) & ~0xf;
	FUNC2(0, fbi->regbase);
	while (FUNC0(fbi->regbase + 0x38) & 0x10)
		/* wait */;
	FUNC2((((info->var.hsync_len - 1) & 0x3f) << 26)
		| ((info->var.left_margin & 0xff) << 18)
		| (((info->var.xres - 1) & 0x3ff) << 8)
		| (info->var.right_margin & 0xff), fbi->regbase + 0x4);
	FUNC2((((info->var.vsync_len - 1) & 0x3f) << 26)
		| ((info->var.upper_margin & 0xff) << 18)
		| (((info->var.yres - 1) & 0x3ff) << 8)
		| (info->var.lower_margin & 0xff), fbi->regbase + 0x8);
	FUNC2((((info->var.yres - 1) & 0x400) << 2)
		| ((info->var.xres - 1) & 0x400), fbi->regbase + 0x10);
	FUNC2(0x80000000, fbi->regbase + 0x20);
	FUNC2(control0 | (reg_bpp << 1) | 0x100, fbi->regbase);

	return 0;
}