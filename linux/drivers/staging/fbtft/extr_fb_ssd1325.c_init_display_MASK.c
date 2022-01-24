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
struct TYPE_4__ {int /*<<< orphan*/  cs; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_2__ gpio; TYPE_1__ fbtftops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fbtft_par*) ; 
 int /*<<< orphan*/  FUNC2 (struct fbtft_par*,int) ; 

__attribute__((used)) static int FUNC3(struct fbtft_par *par)
{
	par->fbtftops.reset(par);

	FUNC0(par->gpio.cs, 0);

	FUNC2(par, 0xb3);
	FUNC2(par, 0xf0);
	FUNC2(par, 0xae);
	FUNC2(par, 0xa1);
	FUNC2(par, 0x00);
	FUNC2(par, 0xa8);
	FUNC2(par, 0x3f);
	FUNC2(par, 0xa0);
	FUNC2(par, 0x45);
	FUNC2(par, 0xa2);
	FUNC2(par, 0x40);
	FUNC2(par, 0x75);
	FUNC2(par, 0x00);
	FUNC2(par, 0x3f);
	FUNC2(par, 0x15);
	FUNC2(par, 0x00);
	FUNC2(par, 0x7f);
	FUNC2(par, 0xa4);
	FUNC2(par, 0xaf);

	return 0;
}