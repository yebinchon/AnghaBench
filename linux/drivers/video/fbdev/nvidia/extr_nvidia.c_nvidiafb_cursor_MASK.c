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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct nvidia_par {int /*<<< orphan*/  PRAMDAC; int /*<<< orphan*/  CURSOR; scalar_t__ cursor_reset; } ;
struct TYPE_5__ {int* red; int* green; int* blue; } ;
struct TYPE_4__ {int yoffset; int xoffset; } ;
struct fb_info {TYPE_2__ cmap; TYPE_1__ var; struct nvidia_par* par; } ;
struct TYPE_6__ {int width; int height; int dy; int dx; int bg_color; int fg_color; scalar_t__ data; } ;
struct fb_cursor {int set; int rop; scalar_t__ enable; TYPE_3__ image; scalar_t__ mask; } ;

/* Variables and functions */
 int ENXIO ; 
 int FB_CUR_SETALL ; 
 int FB_CUR_SETCMAP ; 
 int FB_CUR_SETIMAGE ; 
 int FB_CUR_SETPOS ; 
 int FB_CUR_SETSHAPE ; 
 int FB_CUR_SETSIZE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MAX_CURS ; 
 int /*<<< orphan*/  FUNC0 (struct nvidia_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvidia_par*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
#define  ROP_COPY 129 
#define  ROP_XOR 128 
 int /*<<< orphan*/  FUNC3 (int*,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvidia_par*,int*,int,int,int,int) ; 

__attribute__((used)) static int FUNC8(struct fb_info *info, struct fb_cursor *cursor)
{
	struct nvidia_par *par = info->par;
	u8 data[MAX_CURS * MAX_CURS / 8];
	int i, set = cursor->set;
	u16 fg, bg;

	if (cursor->image.width > MAX_CURS || cursor->image.height > MAX_CURS)
		return -ENXIO;

	FUNC1(par, 0);

	if (par->cursor_reset) {
		set = FB_CUR_SETALL;
		par->cursor_reset = 0;
	}

	if (set & FB_CUR_SETSIZE)
		FUNC6(par->CURSOR, 0, MAX_CURS * MAX_CURS * 2);

	if (set & FB_CUR_SETPOS) {
		u32 xx, yy, temp;

		yy = cursor->image.dy - info->var.yoffset;
		xx = cursor->image.dx - info->var.xoffset;
		temp = xx & 0xFFFF;
		temp |= yy << 16;

		FUNC2(par->PRAMDAC, 0x0000300, temp);
	}

	if (set & (FB_CUR_SETSHAPE | FB_CUR_SETCMAP | FB_CUR_SETIMAGE)) {
		u32 bg_idx = cursor->image.bg_color;
		u32 fg_idx = cursor->image.fg_color;
		u32 s_pitch = (cursor->image.width + 7) >> 3;
		u32 d_pitch = MAX_CURS / 8;
		u8 *dat = (u8 *) cursor->image.data;
		u8 *msk = (u8 *) cursor->mask;
		u8 *src;

		src = FUNC5(s_pitch, cursor->image.height, GFP_ATOMIC);

		if (src) {
			switch (cursor->rop) {
			case ROP_XOR:
				for (i = 0; i < s_pitch * cursor->image.height; i++)
					src[i] = dat[i] ^ msk[i];
				break;
			case ROP_COPY:
			default:
				for (i = 0; i < s_pitch * cursor->image.height; i++)
					src[i] = dat[i] & msk[i];
				break;
			}

			FUNC3(data, d_pitch, src, s_pitch,
						cursor->image.height);

			bg = ((info->cmap.red[bg_idx] & 0xf8) << 7) |
			    ((info->cmap.green[bg_idx] & 0xf8) << 2) |
			    ((info->cmap.blue[bg_idx] & 0xf8) >> 3) | 1 << 15;

			fg = ((info->cmap.red[fg_idx] & 0xf8) << 7) |
			    ((info->cmap.green[fg_idx] & 0xf8) << 2) |
			    ((info->cmap.blue[fg_idx] & 0xf8) >> 3) | 1 << 15;

			FUNC0(par, 0);

			FUNC7(par, data, bg, fg,
						   cursor->image.width,
						   cursor->image.height);
			FUNC4(src);
		}
	}

	if (cursor->enable)
		FUNC1(par, 1);

	return 0;
}