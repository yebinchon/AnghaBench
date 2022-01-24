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
struct timer_list {int dummy; } ;
struct recv_reorder_ctrl {int dummy; } ;

/* Variables and functions */
 struct recv_reorder_ctrl* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct recv_reorder_ctrl*) ; 
 struct recv_reorder_ctrl* reorder_ctrl ; 
 int /*<<< orphan*/  reordering_ctrl_timer ; 

__attribute__((used)) static void FUNC2 (struct timer_list *t)
{
	struct recv_reorder_ctrl *reorder_ctrl =
			 FUNC0(reorder_ctrl, t, reordering_ctrl_timer);

	FUNC1(reorder_ctrl);
}