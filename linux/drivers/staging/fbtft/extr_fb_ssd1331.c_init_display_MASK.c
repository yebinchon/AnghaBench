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
struct fbtft_par {int bgr; TYPE_3__* info; TYPE_1__ fbtftops; } ;
struct TYPE_5__ {int rotate; } ;
struct TYPE_6__ {TYPE_2__ var; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fbtft_par*) ; 
 int /*<<< orphan*/  FUNC1 (struct fbtft_par*,int,...) ; 

__attribute__((used)) static int FUNC2(struct fbtft_par *par)
{
	par->fbtftops.reset(par);

	FUNC1(par, 0xae); /* Display Off */

	/* Set Column Address Mapping, COM Scan Direction and Colour Depth */
	if (par->info->var.rotate == 180)
		FUNC1(par, 0xa0, 0x60 | (par->bgr << 2));
	else
		FUNC1(par, 0xa0, 0x72 | (par->bgr << 2));

	FUNC1(par, 0x72); /* RGB colour */
	FUNC1(par, 0xa1, 0x00); /* Set Display Start Line */
	FUNC1(par, 0xa2, 0x00); /* Set Display Offset */
	FUNC1(par, 0xa4); /* NORMALDISPLAY */
	FUNC1(par, 0xa8, 0x3f); /* Set multiplex */
	FUNC1(par, 0xad, 0x8e); /* Set master */
	/* write_reg(par, 0xb0, 0x0b);  Set power mode */
	FUNC1(par, 0xb1, 0x31); /* Precharge */
	FUNC1(par, 0xb3, 0xf0); /* Clock div */
	FUNC1(par, 0x8a, 0x64); /* Precharge A */
	FUNC1(par, 0x8b, 0x78); /* Precharge B */
	FUNC1(par, 0x8c, 0x64); /* Precharge C */
	FUNC1(par, 0xbb, 0x3a); /* Precharge level */
	FUNC1(par, 0xbe, 0x3e); /* vcomh */
	FUNC1(par, 0x87, 0x06); /* Master current */
	FUNC1(par, 0x81, 0x91); /* Contrast A */
	FUNC1(par, 0x82, 0x50); /* Contrast B */
	FUNC1(par, 0x83, 0x7d); /* Contrast C */
	FUNC1(par, 0xaf); /* Set Sleep Mode Display On */

	return 0;
}