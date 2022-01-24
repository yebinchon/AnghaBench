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
typedef  int u16 ;
struct broadsheetfb_par {int /*<<< orphan*/  io_lock; TYPE_3__* board; TYPE_2__* info; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* wait_for_rdy ) (struct broadsheetfb_par*) ;} ;
struct TYPE_4__ {int xres; } ;
struct TYPE_5__ {TYPE_1__ var; scalar_t__ screen_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  BS_CMD_LD_IMG_AREA ; 
 int /*<<< orphan*/  BS_CMD_LD_IMG_END ; 
 int /*<<< orphan*/  BS_CMD_UPD_FULL ; 
 int /*<<< orphan*/  BS_CMD_WAIT_DSPE_FREND ; 
 int /*<<< orphan*/  BS_CMD_WAIT_DSPE_TRG ; 
 int /*<<< orphan*/  BS_CMD_WR_REG ; 
 int /*<<< orphan*/  FUNC0 (struct broadsheetfb_par*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct broadsheetfb_par*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct broadsheetfb_par*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct broadsheetfb_par*) ; 

__attribute__((used)) static void FUNC7(struct broadsheetfb_par *par,
						u16 y1, u16 y2)
{
	u16 args[5];
	unsigned char *buf = (unsigned char *)par->info->screen_base;

	FUNC4(&(par->io_lock));
	/* y1 must be a multiple of 4 so drop the lower bits */
	y1 &= 0xFFFC;
	/* y2 must be a multiple of 4 , but - 1 so up the lower bits */
	y2 |= 0x0003;

	args[0] = 0x3 << 4;
	args[1] = 0;
	args[2] = y1;
	args[3] = FUNC3(par->info->var.xres);
	args[4] = y2;
	FUNC1(par, BS_CMD_LD_IMG_AREA, 5, args);

	args[0] = 0x154;
	FUNC1(par, BS_CMD_WR_REG, 1, args);

	buf += y1 * par->info->var.xres;
	FUNC0(par, ((1 + y2 - y1) * par->info->var.xres)/2,
				(u16 *) buf);

	FUNC2(par, BS_CMD_LD_IMG_END);

	args[0] = 0x4300;
	FUNC1(par, BS_CMD_UPD_FULL, 1, args);

	FUNC2(par, BS_CMD_WAIT_DSPE_TRG);

	FUNC2(par, BS_CMD_WAIT_DSPE_FREND);

	par->board->wait_for_rdy(par);
	FUNC5(&(par->io_lock));

}