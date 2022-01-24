#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fbtft_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DCS_SET_COLUMN_ADDRESS ; 
 int /*<<< orphan*/  MIPI_DCS_SET_PAGE_ADDRESS ; 
 int /*<<< orphan*/  MIPI_DCS_WRITE_MEMORY_START ; 
 int /*<<< orphan*/  FUNC0 (struct fbtft_par*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC1(struct fbtft_par *par, int xs, int ys, int xe, int ye)
{
	FUNC0(par, MIPI_DCS_SET_COLUMN_ADDRESS,
		  xs >> 8, xs & 0xff,  /* XSTART */
		  xe >> 8, xe & 0xff); /* XEND */

	FUNC0(par, MIPI_DCS_SET_PAGE_ADDRESS,
		  ys >> 8, ys & 0xff,  /* YSTART */
		  ye >> 8, ye & 0xff); /* YEND */

	FUNC0(par, MIPI_DCS_WRITE_MEMORY_START);
}