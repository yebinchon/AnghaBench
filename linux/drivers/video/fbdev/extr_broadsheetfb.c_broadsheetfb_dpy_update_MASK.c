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
struct broadsheetfb_par {size_t panel_index; int /*<<< orphan*/  io_lock; TYPE_2__* board; TYPE_1__* info; } ;
struct TYPE_6__ {int w; int h; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* wait_for_rdy ) (struct broadsheetfb_par*) ;} ;
struct TYPE_4__ {scalar_t__ screen_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  BS_CMD_LD_IMG ; 
 int /*<<< orphan*/  BS_CMD_LD_IMG_END ; 
 int /*<<< orphan*/  BS_CMD_UPD_FULL ; 
 int /*<<< orphan*/  BS_CMD_WAIT_DSPE_FREND ; 
 int /*<<< orphan*/  BS_CMD_WAIT_DSPE_TRG ; 
 int /*<<< orphan*/  BS_CMD_WR_REG ; 
 int /*<<< orphan*/  FUNC0 (struct broadsheetfb_par*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct broadsheetfb_par*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct broadsheetfb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* panel_table ; 
 int /*<<< orphan*/  FUNC5 (struct broadsheetfb_par*) ; 

__attribute__((used)) static void FUNC6(struct broadsheetfb_par *par)
{
	u16 args[5];

	FUNC3(&(par->io_lock));
	args[0] = 0x3 << 4;
	FUNC1(par, BS_CMD_LD_IMG, 1, args);

	args[0] = 0x154;
	FUNC1(par, BS_CMD_WR_REG, 1, args);
	FUNC0(par, (panel_table[par->panel_index].w *
					panel_table[par->panel_index].h)/2,
					(u16 *) par->info->screen_base);

	FUNC2(par, BS_CMD_LD_IMG_END);

	args[0] = 0x4300;
	FUNC1(par, BS_CMD_UPD_FULL, 1, args);

	FUNC2(par, BS_CMD_WAIT_DSPE_TRG);

	FUNC2(par, BS_CMD_WAIT_DSPE_FREND);

	par->board->wait_for_rdy(par);
	FUNC4(&(par->io_lock));
}