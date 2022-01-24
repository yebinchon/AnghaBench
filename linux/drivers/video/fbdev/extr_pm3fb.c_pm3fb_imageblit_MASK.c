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
typedef  int u32 ;
struct pm3_par {int* palette; } ;
struct TYPE_6__ {int scan_align; } ;
struct TYPE_5__ {int bits_per_pixel; } ;
struct TYPE_4__ {int visual; } ;
struct fb_info {scalar_t__ state; int flags; TYPE_3__ pixmap; TYPE_2__ var; TYPE_1__ fix; struct pm3_par* par; } ;
struct fb_image {int height; int fg_color; int bg_color; int depth; int dy; int dx; int width; scalar_t__ data; } ;

/* Variables and functions */
 int FBINFO_HWACCEL_DISABLED ; 
 scalar_t__ FBINFO_STATE_RUNNING ; 
#define  FB_VISUAL_PSEUDOCOLOR 129 
#define  FB_VISUAL_TRUECOLOR 128 
 int /*<<< orphan*/  PM3BackgroundColor ; 
 int /*<<< orphan*/  PM3BitMaskPattern ; 
 int /*<<< orphan*/  PM3Config2D ; 
 int const PM3Config2D_FBWriteEnable ; 
 int const FUNC0 (int) ; 
 int const PM3Config2D_ForegroundROPEnable ; 
 int const PM3Config2D_OpaqueSpan ; 
 int const PM3Config2D_UseConstantSource ; 
 int const PM3Config2D_UserScissorEnable ; 
 int /*<<< orphan*/  PM3ForegroundColor ; 
 int /*<<< orphan*/  PM3RectanglePosition ; 
 int const FUNC1 (int) ; 
 int const FUNC2 (int) ; 
 int /*<<< orphan*/  PM3Render2D ; 
 int const FUNC3 (int) ; 
 int const PM3Render2D_Operation_SyncOnBitMask ; 
 int const PM3Render2D_SpanOperation ; 
 int const FUNC4 (int) ; 
 int const PM3Render2D_XPositive ; 
 int const PM3Render2D_YPositive ; 
 int /*<<< orphan*/  PM3ScissorMaxXY ; 
 int /*<<< orphan*/  PM3ScissorMinXY ; 
 int PM3_FIFO_SIZE ; 
 int /*<<< orphan*/  FUNC5 (struct pm3_par*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pm3_par*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*,struct fb_image const*) ; 

__attribute__((used)) static void FUNC8(struct fb_info *info, const struct fb_image *image)
{
	struct pm3_par *par = info->par;
	u32 height = image->height;
	u32 fgx, bgx;
	const u32 *src = (const u32 *)image->data;

	if (info->state != FBINFO_STATE_RUNNING)
		return;
	if (info->flags & FBINFO_HWACCEL_DISABLED) {
		FUNC7(info, image);
		return;
	}
	switch (info->fix.visual) {
	case FB_VISUAL_PSEUDOCOLOR:
		fgx = image->fg_color;
		bgx = image->bg_color;
		break;
	case FB_VISUAL_TRUECOLOR:
	default:
		fgx = par->palette[image->fg_color];
		bgx = par->palette[image->bg_color];
		break;
	}
	if (image->depth != 1) {
		FUNC7(info, image);
		return;
	}

	if (info->var.bits_per_pixel == 8) {
		fgx |= fgx << 8;
		bgx |= bgx << 8;
	}
	if (info->var.bits_per_pixel <= 16) {
		fgx |= fgx << 16;
		bgx |= bgx << 16;
	}

	FUNC5(par, 7);

	FUNC6(par, PM3ForegroundColor, fgx);
	FUNC6(par, PM3BackgroundColor, bgx);

	/* ROP Ox3 is GXcopy */
	FUNC6(par, PM3Config2D,
			PM3Config2D_UserScissorEnable |
			PM3Config2D_UseConstantSource |
			PM3Config2D_ForegroundROPEnable |
			FUNC0(0x3) |
			PM3Config2D_OpaqueSpan |
			PM3Config2D_FBWriteEnable);
	FUNC6(par, PM3ScissorMinXY,
			((image->dy & 0x0fff) << 16) | (image->dx & 0x0fff));
	FUNC6(par, PM3ScissorMaxXY,
			(((image->dy + image->height) & 0x0fff) << 16) |
			((image->dx + image->width) & 0x0fff));
	FUNC6(par, PM3RectanglePosition,
			FUNC1(image->dx) |
			FUNC2(image->dy));
	FUNC6(par, PM3Render2D,
			PM3Render2D_XPositive |
			PM3Render2D_YPositive |
			PM3Render2D_Operation_SyncOnBitMask |
			PM3Render2D_SpanOperation |
			FUNC4(image->width) |
			FUNC3(image->height));


	while (height--) {
		int width = ((image->width + 7) >> 3)
				+ info->pixmap.scan_align - 1;
		width >>= 2;

		while (width >= PM3_FIFO_SIZE) {
			int i = PM3_FIFO_SIZE - 1;

			FUNC5(par, PM3_FIFO_SIZE);
			while (i--) {
				FUNC6(par, PM3BitMaskPattern, *src);
				src++;
			}
			width -= PM3_FIFO_SIZE - 1;
		}

		FUNC5(par, width + 1);
		while (width--) {
			FUNC6(par, PM3BitMaskPattern, *src);
			src++;
		}
	}
}