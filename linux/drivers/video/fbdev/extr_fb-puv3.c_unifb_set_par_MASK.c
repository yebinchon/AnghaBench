#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_6__ {int xres; int yres; int upper_margin; int lower_margin; int left_margin; int right_margin; int hsync_len; int vsync_len; scalar_t__ pixclock; int xres_virtual; int bits_per_pixel; } ;
struct TYPE_5__ {int line_length; int smem_start; } ;
struct fb_info {TYPE_3__ var; TYPE_2__ fix; int /*<<< orphan*/  device; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {int xres; int yres; int upper_margin; int lower_margin; int left_margin; int right_margin; int hsync_len; int vsync_len; scalar_t__ pixclock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 struct clk* FUNC0 (int) ; 
 int /*<<< orphan*/  UDE_CFG ; 
 int UDE_CFG_DST16 ; 
 int UDE_CFG_DST24 ; 
 int UDE_CFG_DST32 ; 
 int UDE_CFG_DST8 ; 
 int UDE_CFG_GDEN_ENABLE ; 
 int UDE_CFG_TIMEUP_ENABLE ; 
 int /*<<< orphan*/  UDE_FSA ; 
 int /*<<< orphan*/  UDE_HAT ; 
 int /*<<< orphan*/  UDE_HBT ; 
 int /*<<< orphan*/  UDE_HST ; 
 int /*<<< orphan*/  UDE_LS ; 
 int /*<<< orphan*/  UDE_PS ; 
 int /*<<< orphan*/  UDE_VAT ; 
 int /*<<< orphan*/  UDE_VBT ; 
 int /*<<< orphan*/  UDE_VST ; 
 struct clk* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct clk*,scalar_t__) ; 
 int FUNC3 (int,int) ; 
 TYPE_3__ unifb_default ; 
 TYPE_2__ unifb_fix ; 
 TYPE_1__* unifb_modes ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct fb_info *info)
{
	int hTotal, vTotal, hSyncStart, hSyncEnd, vSyncStart, vSyncEnd;
	int format;

#ifdef CONFIG_PUV3_PM
	struct clk *clk_vga;
	u32 pixclk = 0;
	int i;

	for (i = 0; i <= 10; i++) {
		if    (info->var.xres         == unifb_modes[i].xres
		    && info->var.yres         == unifb_modes[i].yres
		    && info->var.upper_margin == unifb_modes[i].upper_margin
		    && info->var.lower_margin == unifb_modes[i].lower_margin
		    && info->var.left_margin  == unifb_modes[i].left_margin
		    && info->var.right_margin == unifb_modes[i].right_margin
		    && info->var.hsync_len    == unifb_modes[i].hsync_len
		    && info->var.vsync_len    == unifb_modes[i].vsync_len) {
			pixclk = unifb_modes[i].pixclock;
			break;
		}
	}

	/* set clock rate */
	clk_vga = clk_get(info->device, "VGA_CLK");
	if (clk_vga == ERR_PTR(-ENOENT))
		return -ENOENT;

	if (pixclk != 0) {
		if (clk_set_rate(clk_vga, pixclk)) { /* set clock failed */
			info->fix = unifb_fix;
			info->var = unifb_default;
			if (clk_set_rate(clk_vga, unifb_default.pixclock))
				return -EINVAL;
		}
	}
#endif

	info->fix.line_length = FUNC3(info->var.xres_virtual,
						info->var.bits_per_pixel);

	hSyncStart = info->var.xres + info->var.right_margin;
	hSyncEnd = hSyncStart + info->var.hsync_len;
	hTotal = hSyncEnd + info->var.left_margin;

	vSyncStart = info->var.yres + info->var.lower_margin;
	vSyncEnd = vSyncStart + info->var.vsync_len;
	vTotal = vSyncEnd + info->var.upper_margin;

	switch (info->var.bits_per_pixel) {
	case 8:
		format = UDE_CFG_DST8;
		break;
	case 16:
		format = UDE_CFG_DST16;
		break;
	case 24:
		format = UDE_CFG_DST24;
		break;
	case 32:
		format = UDE_CFG_DST32;
		break;
	default:
		return -EINVAL;
	}

	FUNC4(info->fix.smem_start, UDE_FSA);
	FUNC4(info->var.yres, UDE_LS);
	FUNC4(FUNC3(info->var.xres,
			info->var.bits_per_pixel) >> 3, UDE_PS);
			/* >> 3 for hardware required. */
	FUNC4((hTotal << 16) | (info->var.xres), UDE_HAT);
	FUNC4(((hTotal - 1) << 16) | (info->var.xres - 1), UDE_HBT);
	FUNC4(((hSyncEnd - 1) << 16) | (hSyncStart - 1), UDE_HST);
	FUNC4((vTotal << 16) | (info->var.yres), UDE_VAT);
	FUNC4(((vTotal - 1) << 16) | (info->var.yres - 1), UDE_VBT);
	FUNC4(((vSyncEnd - 1) << 16) | (vSyncStart - 1), UDE_VST);
	FUNC4(UDE_CFG_GDEN_ENABLE | UDE_CFG_TIMEUP_ENABLE
			| format | 0xC0000001, UDE_CFG);

	return 0;
}