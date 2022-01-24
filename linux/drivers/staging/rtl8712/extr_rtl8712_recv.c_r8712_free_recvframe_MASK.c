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
struct TYPE_3__ {int /*<<< orphan*/  list; int /*<<< orphan*/ * pkt; struct _adapter* adapter; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
struct __queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct recv_priv {int /*<<< orphan*/  free_recvframe_cnt; struct __queue free_recv_queue; } ;
struct _adapter {struct recv_priv recvpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(union recv_frame *precvframe,
		   struct  __queue *pfree_recv_queue)
{
	unsigned long irqL;
	struct _adapter *padapter = precvframe->u.hdr.adapter;
	struct recv_priv *precvpriv = &padapter->recvpriv;

	if (precvframe->u.hdr.pkt) {
		FUNC0(precvframe->u.hdr.pkt);/*free skb by driver*/
		precvframe->u.hdr.pkt = NULL;
	}
	FUNC3(&pfree_recv_queue->lock, irqL);
	FUNC2(&(precvframe->u.hdr.list));
	FUNC1(&(precvframe->u.hdr.list), &pfree_recv_queue->queue);
	if (padapter) {
		if (pfree_recv_queue == &precvpriv->free_recv_queue)
			precvpriv->free_recvframe_cnt++;
	}
	FUNC4(&pfree_recv_queue->lock, irqL);
}