#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {int bgr; TYPE_1__ fbtftops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fbtft_par*) ; 
 int /*<<< orphan*/  FUNC2 (struct fbtft_par*,int,int) ; 

__attribute__((used)) static int FUNC3(struct fbtft_par *par)
{
	par->fbtftops.reset(par);

	/* driving ability */
	FUNC2(par, 0xEA, 0x00);
	FUNC2(par, 0xEB, 0x20);
	FUNC2(par, 0xEC, 0x0C);
	FUNC2(par, 0xED, 0xC4);
	FUNC2(par, 0xE8, 0x40);
	FUNC2(par, 0xE9, 0x38);
	FUNC2(par, 0xF1, 0x01);
	FUNC2(par, 0xF2, 0x10);
	FUNC2(par, 0x27, 0xA3);

	/* power voltage */
	FUNC2(par, 0x1B, 0x1B);
	FUNC2(par, 0x1A, 0x01);
	FUNC2(par, 0x24, 0x2F);
	FUNC2(par, 0x25, 0x57);

	/* VCOM offset */
	FUNC2(par, 0x23, 0x8D); /* for flicker adjust */

	/* power on */
	FUNC2(par, 0x18, 0x36);
	FUNC2(par, 0x19, 0x01); /* start osc */
	FUNC2(par, 0x01, 0x00); /* wakeup */
	FUNC2(par, 0x1F, 0x88);
	FUNC0(5);
	FUNC2(par, 0x1F, 0x80);
	FUNC0(5);
	FUNC2(par, 0x1F, 0x90);
	FUNC0(5);
	FUNC2(par, 0x1F, 0xD0);
	FUNC0(5);

	/* color selection */
	FUNC2(par, 0x17, 0x05); /* 65k */

	/*panel characteristic */
	FUNC2(par, 0x36, 0x00);

	/*display on */
	FUNC2(par, 0x28, 0x38);
	FUNC0(40);
	FUNC2(par, 0x28, 0x3C);

	/* orientation */
	FUNC2(par, 0x16, 0x60 | (par->bgr << 3));

	return 0;
}