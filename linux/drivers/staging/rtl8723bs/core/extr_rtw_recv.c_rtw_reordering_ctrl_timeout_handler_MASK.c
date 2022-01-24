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
struct __queue {int /*<<< orphan*/  lock; } ;
struct recv_reorder_ctrl {int /*<<< orphan*/  reordering_ctrl_timer; struct __queue pending_recvframe_queue; struct adapter* padapter; } ;
struct adapter {scalar_t__ bSurpriseRemoved; scalar_t__ bDriverStopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  REORDER_WAIT_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct recv_reorder_ctrl* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct recv_reorder_ctrl* preorder_ctrl ; 
 int FUNC2 (struct adapter*,struct recv_reorder_ctrl*,int) ; 
 int /*<<< orphan*/  reordering_ctrl_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct timer_list *t)
{
	struct recv_reorder_ctrl *preorder_ctrl =
		FUNC1(preorder_ctrl, t, reordering_ctrl_timer);
	struct adapter *padapter = preorder_ctrl->padapter;
	struct __queue *ppending_recvframe_queue = &preorder_ctrl->pending_recvframe_queue;


	if (padapter->bDriverStopped || padapter->bSurpriseRemoved)
		return;

	/* DBG_871X("+rtw_reordering_ctrl_timeout_handler() =>\n"); */

	FUNC3(&ppending_recvframe_queue->lock);

	if (FUNC2(padapter, preorder_ctrl, true) == true)
		FUNC0(&preorder_ctrl->reordering_ctrl_timer, REORDER_WAIT_TIME);

	FUNC4(&ppending_recvframe_queue->lock);

}