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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_6__ {int /*<<< orphan*/ * buf; } ;
struct fbtft_par {TYPE_3__ txbuf; TYPE_2__* info; } ;
struct TYPE_4__ {int xres; } ;
struct TYPE_5__ {TYPE_1__ var; scalar_t__ screen_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (size_t,int) ; 
 int FUNC2 (struct fbtft_par*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fbtft_par*,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct fbtft_par *par, size_t offset, size_t len)
{
	u16 *vmem16 = (u16 *)par->info->screen_buffer;
	u32 xres = par->info->var.xres;
	int page, page_start, page_end, x, i, ret;
	u8 *buf = par->txbuf.buf;

	/* offset refers to vmem with 2 bytes element size */
	page_start = offset / (8 * 2 * xres);
	page_end = FUNC1(offset + len, 8 * 2 * xres);

	for (page = page_start; page < page_end; page++) {
		/* set page and set column to 2 because of vidmem width 132 */
		FUNC4(par, 0xb0 | page, 0x00 | 2, 0x10 | 0);

		FUNC3(buf, 0, xres);
		for (x = 0; x < xres; x++)
			for (i = 0; i < 8; i++)
				if (vmem16[(page * 8 + i) * xres + x])
					buf[x] |= FUNC0(i);

		/* Write data */
		ret = FUNC2(par, buf, xres, 1);
		if (ret < 0)
			return ret;
	}

	return 0;
}