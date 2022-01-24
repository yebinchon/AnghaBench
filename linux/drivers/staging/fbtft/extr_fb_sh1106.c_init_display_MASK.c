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
struct TYPE_4__ {int /*<<< orphan*/  (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_3__* info; TYPE_1__ fbtftops; } ;
struct TYPE_5__ {scalar_t__ xres; int yres; scalar_t__ rotate; } ;
struct TYPE_6__ {TYPE_2__ var; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EINVAL ; 
 int HEIGHT ; 
 scalar_t__ WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fbtft_par*) ; 
 int /*<<< orphan*/  FUNC3 (struct fbtft_par*,int,...) ; 

__attribute__((used)) static int FUNC4(struct fbtft_par *par)
{
	if (!par->info->var.xres || par->info->var.xres > WIDTH ||
	    !par->info->var.yres || par->info->var.yres > HEIGHT ||
	    par->info->var.yres % 8) {
		FUNC0(par->info->device, "Invalid screen size\n");
		return -EINVAL;
	}

	if (par->info->var.rotate) {
		FUNC0(par->info->device, "Display rotation not supported\n");
		return -EINVAL;
	}

	par->fbtftops.reset(par);

	/* Set Display OFF */
	FUNC3(par, 0xAE);

	/* Set Display Clock Divide Ratio/ Oscillator Frequency */
	FUNC3(par, 0xD5, 0x80);

	/* Set Multiplex Ratio */
	FUNC3(par, 0xA8, par->info->var.yres - 1);

	/* Set Display Offset */
	FUNC3(par, 0xD3, 0x00);

	/* Set Display Start Line */
	FUNC3(par, 0x40 | 0x0);

	/* Set Segment Re-map */
	/* column address 127 is mapped to SEG0 */
	FUNC3(par, 0xA0 | 0x1);

	/* Set COM Output Scan Direction */
	/* remapped mode. Scan from COM[N-1] to COM0 */
	FUNC3(par, 0xC8);

	/* Set COM Pins Hardware Configuration */
	if (par->info->var.yres == 64)
		/* A[4]=1b, Alternative COM pin configuration */
		FUNC3(par, 0xDA, 0x12);
	else if (par->info->var.yres == 48)
		/* A[4]=1b, Alternative COM pin configuration */
		FUNC3(par, 0xDA, 0x12);
	else
		/* A[4]=0b, Sequential COM pin configuration */
		FUNC3(par, 0xDA, 0x02);

	/* Set Pre-charge Period */
	FUNC3(par, 0xD9, 0xF1);

	/* Set VCOMH Deselect Level */
	FUNC3(par, 0xDB, 0x40);

	/* Set Display ON */
	FUNC3(par, 0xAF);

	FUNC1(150);

	return 0;
}