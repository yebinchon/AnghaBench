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
typedef  int /*<<< orphan*/  u16 ;
struct broadsheetfb_par {TYPE_1__* board; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* wait_for_rdy ) (struct broadsheetfb_par*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BS_CMD_RD_REG ; 
 int /*<<< orphan*/  FUNC0 (struct broadsheetfb_par*) ; 
 int /*<<< orphan*/  FUNC1 (struct broadsheetfb_par*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct broadsheetfb_par*) ; 

__attribute__((used)) static u16 FUNC3(struct broadsheetfb_par *par, u16 reg)
{
	FUNC1(par, BS_CMD_RD_REG, 1, &reg);
	par->board->wait_for_rdy(par);
	return FUNC0(par);
}