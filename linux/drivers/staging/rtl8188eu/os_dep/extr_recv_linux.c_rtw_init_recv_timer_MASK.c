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
struct recv_reorder_ctrl {int /*<<< orphan*/  reordering_ctrl_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  rtw_reordering_ctrl_timeout_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct recv_reorder_ctrl *preorder_ctrl)
{
	FUNC0(&preorder_ctrl->reordering_ctrl_timer,
		    rtw_reordering_ctrl_timeout_handler, 0);
}