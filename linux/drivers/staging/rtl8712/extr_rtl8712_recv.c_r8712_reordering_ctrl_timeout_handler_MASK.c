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
struct __queue {int /*<<< orphan*/  lock; } ;
struct recv_reorder_ctrl {struct __queue pending_recvframe_queue; struct _adapter* padapter; } ;
struct _adapter {scalar_t__ surprise_removed; scalar_t__ driver_stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _adapter*,struct recv_reorder_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(void *pcontext)
{
	unsigned long irql;
	struct recv_reorder_ctrl *preorder_ctrl = pcontext;
	struct _adapter *padapter = preorder_ctrl->padapter;
	struct  __queue *ppending_recvframe_queue =
				 &preorder_ctrl->pending_recvframe_queue;

	if (padapter->driver_stopped || padapter->surprise_removed)
		return;
	FUNC1(&ppending_recvframe_queue->lock, irql);
	FUNC0(padapter, preorder_ctrl, true);
	FUNC2(&ppending_recvframe_queue->lock, irql);
}