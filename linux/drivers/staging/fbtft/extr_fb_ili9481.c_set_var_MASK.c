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
struct fbtft_par {int bgr; TYPE_2__* info; } ;
struct TYPE_3__ {int rotate; } ;
struct TYPE_4__ {TYPE_1__ var; } ;

/* Variables and functions */
 int HFLIP ; 
 int /*<<< orphan*/  MIPI_DCS_SET_ADDRESS_MODE ; 
 int ROW_X_COL ; 
 int VFLIP ; 
 int /*<<< orphan*/  FUNC0 (struct fbtft_par*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct fbtft_par *par)
{
	switch (par->info->var.rotate) {
	case 270:
		FUNC0(par, MIPI_DCS_SET_ADDRESS_MODE,
			  ROW_X_COL | HFLIP | VFLIP | (par->bgr << 3));
		break;
	case 180:
		FUNC0(par, MIPI_DCS_SET_ADDRESS_MODE,
			  VFLIP | (par->bgr << 3));
		break;
	case 90:
		FUNC0(par, MIPI_DCS_SET_ADDRESS_MODE,
			  ROW_X_COL | (par->bgr << 3));
		break;
	default:
		FUNC0(par, MIPI_DCS_SET_ADDRESS_MODE,
			  HFLIP | (par->bgr << 3));
		break;
	}

	return 0;
}