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
struct rx_pkt_attrib {int /*<<< orphan*/  seq_num; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; struct rx_pkt_attrib attrib; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
struct __queue {int dummy; } ;
struct recv_reorder_ctrl {struct __queue pending_recvframe_queue; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct list_head* FUNC2 (struct __queue*) ; 
 struct list_head* FUNC3 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct recv_reorder_ctrl *preorder_ctrl, union recv_frame *prframe)
{
	struct rx_pkt_attrib *pattrib = &prframe->u.hdr.attrib;
	struct __queue *ppending_recvframe_queue = &preorder_ctrl->pending_recvframe_queue;
	struct list_head	*phead, *plist;
	union recv_frame *pnextrframe;
	struct rx_pkt_attrib *pnextattrib;

	/* DbgPrint("+enqueue_reorder_recvframe()\n"); */

	/* spin_lock_irqsave(&ppending_recvframe_queue->lock, irql); */
	/* spin_lock(&ppending_recvframe_queue->lock); */


	phead = FUNC2(ppending_recvframe_queue);
	plist = FUNC3(phead);

	while (phead != plist) {
		pnextrframe = (union recv_frame *)plist;
		pnextattrib = &pnextrframe->u.hdr.attrib;

		if (FUNC1(pnextattrib->seq_num, pattrib->seq_num))
			plist = FUNC3(plist);
		else if (FUNC0(pnextattrib->seq_num, pattrib->seq_num))
			/* Duplicate entry is found!! Do not insert current entry. */
			/* RT_TRACE(COMP_RX_REORDER, DBG_TRACE, ("InsertRxReorderList(): Duplicate packet is dropped!! IndicateSeq: %d, NewSeq: %d\n", pTS->RxIndicateSeq, SeqNum)); */
			/* spin_unlock_irqrestore(&ppending_recvframe_queue->lock, irql); */
			return false;
		else
			break;

		/* DbgPrint("enqueue_reorder_recvframe():while\n"); */

	}


	/* spin_lock_irqsave(&ppending_recvframe_queue->lock, irql); */
	/* spin_lock(&ppending_recvframe_queue->lock); */

	FUNC5(&(prframe->u.hdr.list));

	FUNC4(&(prframe->u.hdr.list), plist);

	/* spin_unlock(&ppending_recvframe_queue->lock); */
	/* spin_unlock_irqrestore(&ppending_recvframe_queue->lock, irql); */


	/* RT_TRACE(COMP_RX_REORDER, DBG_TRACE, ("InsertRxReorderList(): Pkt insert into buffer!! IndicateSeq: %d, NewSeq: %d\n", pTS->RxIndicateSeq, SeqNum)); */
	return true;

}