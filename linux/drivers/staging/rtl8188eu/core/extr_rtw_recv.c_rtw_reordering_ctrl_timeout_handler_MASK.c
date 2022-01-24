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
 struct recv_reorder_ctrl* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct recv_reorder_ctrl* preorder_ctrl ; 
 scalar_t__ FUNC3 (struct adapter*,struct recv_reorder_ctrl*,int) ; 
 int /*<<< orphan*/  reordering_ctrl_timer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct timer_list *t)
{
	struct recv_reorder_ctrl *preorder_ctrl = FUNC0(preorder_ctrl, t,
							   reordering_ctrl_timer);
	struct adapter *padapter = preorder_ctrl->padapter;
	struct __queue *ppending_recvframe_queue = &preorder_ctrl->pending_recvframe_queue;

	if (padapter->bDriverStopped || padapter->bSurpriseRemoved)
		return;

	FUNC4(&ppending_recvframe_queue->lock);

	if (FUNC3(padapter, preorder_ctrl, true))
		FUNC1(&preorder_ctrl->reordering_ctrl_timer,
			  jiffies + FUNC2(REORDER_WAIT_TIME));

	FUNC5(&ppending_recvframe_queue->lock);
}