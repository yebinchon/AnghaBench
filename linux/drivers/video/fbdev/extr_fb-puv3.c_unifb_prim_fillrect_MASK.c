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
typedef  unsigned int u32 ;
struct TYPE_2__ {int bits_per_pixel; int xres; int yres; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_1__ var; } ;
struct fb_fillrect {int width; int height; int dx; int dy; int color; } ;

/* Variables and functions */
 int /*<<< orphan*/  UGE_BCOLOR ; 
 int /*<<< orphan*/  UGE_CLIP0 ; 
 int /*<<< orphan*/  UGE_CLIP1 ; 
 int /*<<< orphan*/  UGE_COMMAND ; 
 int /*<<< orphan*/  UGE_DSTSTART ; 
 int /*<<< orphan*/  UGE_DSTXY ; 
 int /*<<< orphan*/  UGE_FCOLOR ; 
 int /*<<< orphan*/  UGE_PITCH ; 
 int /*<<< orphan*/  UGE_ROPALPHA ; 
 int /*<<< orphan*/  UGE_SRCSTART ; 
 int /*<<< orphan*/  UGE_SRCXY ; 
 int /*<<< orphan*/  UGE_WIDHEIGHT ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct fb_info *info,
				const struct fb_fillrect *region)
{
	int awidth = region->width;
	int aheight = region->height;
	int m_iBpp = info->var.bits_per_pixel;
	int screen_width = info->var.xres;
	int src_sel = 1;	/* from fg_color */
	int pat_sel = 1;
	int src_x0 = 0;
	int dst_x0 = region->dx;
	int src_y0 = 0;
	int dst_y0 = region->dy;
	int rop_alpha_sel = 0;
	int rop_alpha_code = 0xCC;
	int x_dir = 1;
	int y_dir = 1;
	int alpha_r = 0;
	int alpha_sel = 0;
	int dst_pitch = screen_width * (m_iBpp / 8);
	int dst_offset = dst_y0 * dst_pitch + dst_x0 * (m_iBpp / 8);
	int src_pitch = screen_width * (m_iBpp / 8);
	int src_offset = src_y0 * src_pitch + src_x0 * (m_iBpp / 8);
	unsigned int command = 0;
	int clip_region = 0;
	int clip_en = 0;
	int tp_en = 0;
	int fg_color = 0;
	int bottom = info->var.yres - 1;
	int right = info->var.xres - 1;
	int top = 0;

	bottom = (bottom << 16) | right;
	command = (rop_alpha_sel << 26) | (pat_sel << 18) | (src_sel << 16)
		| (x_dir << 20) | (y_dir << 21) | (command << 24)
		| (clip_region << 23) | (clip_en << 22) | (tp_en << 27);
	src_pitch = (dst_pitch << 16) | src_pitch;
	awidth = awidth | (aheight << 16);
	alpha_r = ((rop_alpha_code & 0xff) << 8) | (alpha_r & 0xff)
		| (alpha_sel << 16);
	src_x0 = (src_x0 & 0x1fff) | ((src_y0 & 0x1fff) << 16);
	dst_x0 = (dst_x0 & 0x1fff) | ((dst_y0 & 0x1fff) << 16);
	fg_color = region->color;

	FUNC0(info);

	FUNC1(((u32 *)(info->pseudo_palette))[fg_color], UGE_FCOLOR);
	FUNC1(0, UGE_BCOLOR);
	FUNC1(src_pitch, UGE_PITCH);
	FUNC1(src_offset, UGE_SRCSTART);
	FUNC1(dst_offset, UGE_DSTSTART);
	FUNC1(awidth, UGE_WIDHEIGHT);
	FUNC1(top, UGE_CLIP0);
	FUNC1(bottom, UGE_CLIP1);
	FUNC1(alpha_r, UGE_ROPALPHA);
	FUNC1(src_x0, UGE_SRCXY);
	FUNC1(dst_x0, UGE_DSTXY);
	FUNC1(command, UGE_COMMAND);
}