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
struct fbtft_par {TYPE_2__* info; } ;
struct TYPE_3__ {int rotate; int /*<<< orphan*/  xres; int /*<<< orphan*/  yres; } ;
struct TYPE_4__ {TYPE_1__ var; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fbtft_par*,int,...) ; 

__attribute__((used)) static void FUNC1(struct fbtft_par *par, int xs, int ys, int xe, int ye)
{
	switch (par->info->var.rotate) {
	/* R4Eh - Set GDDRAM X address counter */
	/* R4Fh - Set GDDRAM Y address counter */
	case 0:
		FUNC0(par, 0x4e, xs);
		FUNC0(par, 0x4f, ys);
		break;
	case 180:
		FUNC0(par, 0x4e, par->info->var.xres - 1 - xs);
		FUNC0(par, 0x4f, par->info->var.yres - 1 - ys);
		break;
	case 270:
		FUNC0(par, 0x4e, par->info->var.yres - 1 - ys);
		FUNC0(par, 0x4f, xs);
		break;
	case 90:
		FUNC0(par, 0x4e, ys);
		FUNC0(par, 0x4f, par->info->var.xres - 1 - xs);
		break;
	}

	/* R22h - RAM data write */
	FUNC0(par, 0x22);
}