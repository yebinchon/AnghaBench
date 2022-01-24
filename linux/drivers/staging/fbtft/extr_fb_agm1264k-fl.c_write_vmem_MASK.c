#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_8__ {int (* write ) (struct fbtft_par*,int*,size_t) ;} ;
struct TYPE_6__ {int* buf; } ;
struct fbtft_par {int /*<<< orphan*/  CS1; int /*<<< orphan*/  CS0; TYPE_4__* info; TYPE_3__ fbtftops; int /*<<< orphan*/  RS; TYPE_1__ txbuf; } ;
struct TYPE_10__ {int ys_page; int ye_page; int xs; int xe; } ;
struct TYPE_7__ {int xres; int yres; } ;
struct TYPE_9__ {int /*<<< orphan*/  device; TYPE_2__ var; scalar_t__ screen_buffer; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 short BLACK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 short WHITE ; 
 scalar_t__ FUNC1 (short) ; 
 TYPE_5__ addr_win ; 
 int /*<<< orphan*/  FUNC2 (struct fbtft_par*,int*,short*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__* gamma_correction_table ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,short*,short,short) ; 
 int /*<<< orphan*/  FUNC6 (short*) ; 
 short* FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct fbtft_par*,int*,size_t) ; 
 int FUNC9 (struct fbtft_par*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct fbtft_par*,int,int) ; 

__attribute__((used)) static int FUNC11(struct fbtft_par *par, size_t offset, size_t len)
{
	u16 *vmem16 = (u16 *)par->info->screen_buffer;
	u8 *buf = par->txbuf.buf;
	int x, y;
	int ret = 0;

	/* buffer to convert RGB565 -> grayscale16 -> Dithered image 1bpp */
	signed short *convert_buf = FUNC7(par->info->var.xres *
		par->info->var.yres, sizeof(signed short), GFP_NOIO);

	if (!convert_buf)
		return -ENOMEM;

	/* converting to grayscale16 */
	for (x = 0; x < par->info->var.xres; ++x)
		for (y = 0; y < par->info->var.yres; ++y) {
			u16 pixel = vmem16[y *  par->info->var.xres + x];
			u16 b = pixel & 0x1f;
			u16 g = (pixel & (0x3f << 5)) >> 5;
			u16 r = (pixel & (0x1f << (5 + 6))) >> (5 + 6);

			pixel = (299 * r + 587 * g + 114 * b) / 200;
			if (pixel > 255)
				pixel = 255;

			/* gamma-correction by table */
			convert_buf[y *  par->info->var.xres + x] =
				(signed short)gamma_correction_table[pixel];
		}

	/* Image Dithering */
	for (x = 0; x < par->info->var.xres; ++x)
		for (y = 0; y < par->info->var.yres; ++y) {
			signed short pixel =
				convert_buf[y *  par->info->var.xres + x];
			signed short error_b = pixel - BLACK;
			signed short error_w = pixel - WHITE;
			signed short error;

			/* what color close? */
			if (FUNC1(error_b) >= FUNC1(error_w)) {
				/* white */
				error = error_w;
				pixel = 0xff;
			} else {
				/* black */
				error = error_b;
				pixel = 0;
			}

			error /= 8;

			FUNC5(par->info->var.xres,
						 par->info->var.yres,
						 x, y, convert_buf,
						 pixel, error);
		}

	/* 1 string = 2 pages */
	for (y = addr_win.ys_page; y <= addr_win.ye_page; ++y) {
		/* left half of display */
		if (addr_win.xs < par->info->var.xres / 2) {
			FUNC2(par, buf, convert_buf,
					      addr_win.xs,
					      par->info->var.xres / 2, y);

			len = par->info->var.xres / 2 - addr_win.xs;

			/* select left side (sc0)
			 * set addr
			 */
			FUNC10(par, 0x00, FUNC0(6) | (u8)addr_win.xs);
			FUNC10(par, 0x00, (0x17 << 3) | (u8)y);

			/* write bitmap */
			FUNC4(par->RS, 1); /* RS->1 (data mode) */
			ret = par->fbtftops.write(par, buf, len);
			if (ret < 0)
				FUNC3(par->info->device,
					"write failed and returned: %d\n",
					ret);
		}
		/* right half of display */
		if (addr_win.xe >= par->info->var.xres / 2) {
			FUNC2(par, buf,
					      convert_buf,
					      par->info->var.xres / 2,
					      addr_win.xe + 1, y);

			len = addr_win.xe + 1 - par->info->var.xres / 2;

			/* select right side (sc1)
			 * set addr
			 */
			FUNC10(par, 0x01, FUNC0(6));
			FUNC10(par, 0x01, (0x17 << 3) | (u8)y);

			/* write bitmap */
			FUNC4(par->RS, 1); /* RS->1 (data mode) */
			par->fbtftops.write(par, buf, len);
			if (ret < 0)
				FUNC3(par->info->device,
					"write failed and returned: %d\n",
					ret);
		}
	}
	FUNC6(convert_buf);

	FUNC4(par->CS0, 1);
	FUNC4(par->CS1, 1);

	return ret;
}