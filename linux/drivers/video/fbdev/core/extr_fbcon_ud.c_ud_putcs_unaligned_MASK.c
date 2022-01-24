#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_3__ {int width; } ;
struct vc_data {TYPE_1__ vc_font; scalar_t__ vc_hi_font_mask; } ;
struct fbcon_ops {int /*<<< orphan*/ * fontbuffer; } ;
struct fb_info {TYPE_2__* fbops; struct fbcon_ops* fbcon_par; } ;
struct fb_image {int /*<<< orphan*/  height; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* fb_imageblit ) (struct fb_info*,struct fb_image*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*,struct fb_image*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct vc_data*) ; 

__attribute__((used)) static inline void FUNC4(struct vc_data *vc,
				      struct fb_info *info, const u16 *s,
				      u32 attr, u32 cnt, u32 d_pitch,
				      u32 s_pitch, u32 cellsize,
				      struct fb_image *image, u8 *buf,
				      u8 *dst)
{
	struct fbcon_ops *ops = info->fbcon_par;
	u16 charmask = vc->vc_hi_font_mask ? 0x1ff : 0xff;
	u32 shift_low = 0, mod = vc->vc_font.width % 8;
	u32 shift_high = 8;
	u32 idx = vc->vc_font.width >> 3;
	u8 *src;

	while (cnt--) {
		src = ops->fontbuffer + (FUNC1(s--) & charmask)*cellsize;

		if (attr) {
			FUNC3(buf, src, attr, vc);
			src = buf;
		}

		FUNC0(dst, d_pitch, src, idx,
					image->height, shift_high,
					shift_low, mod);
		shift_low += mod;
		dst += (shift_low >= 8) ? s_pitch : s_pitch - 1;
		shift_low &= 7;
		shift_high = 8 - shift_low;
	}

	info->fbops->fb_imageblit(info, image);

}