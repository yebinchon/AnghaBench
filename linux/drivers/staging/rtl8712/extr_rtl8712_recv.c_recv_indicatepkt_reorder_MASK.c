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
struct rx_pkt_attrib {int qos; int /*<<< orphan*/  seq_num; int /*<<< orphan*/  amsdu; } ;
struct TYPE_3__ {struct recv_reorder_ctrl* preorder_ctrl; struct rx_pkt_attrib attrib; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
struct __queue {int /*<<< orphan*/  lock; } ;
struct recv_reorder_ctrl {int /*<<< orphan*/  reordering_ctrl_timer; struct __queue pending_recvframe_queue; } ;
struct _adapter {int /*<<< orphan*/  surprise_removed; int /*<<< orphan*/  driver_stopped; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  REORDER_WAIT_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct recv_reorder_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct recv_reorder_ctrl*,union recv_frame*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct _adapter*,union recv_frame*) ; 
 scalar_t__ FUNC6 (struct _adapter*,struct recv_reorder_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC7 (union recv_frame*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct _adapter *padapter,
			     union recv_frame *prframe)
{
	unsigned long irql;
	struct rx_pkt_attrib *pattrib = &prframe->u.hdr.attrib;
	struct recv_reorder_ctrl *preorder_ctrl = prframe->u.hdr.preorder_ctrl;
	struct  __queue *ppending_recvframe_queue =
			 &preorder_ctrl->pending_recvframe_queue;

	if (!pattrib->amsdu) {
		/* s1. */
		FUNC7(prframe);
		if (pattrib->qos != 1) {
			if (!padapter->driver_stopped &&
			    !padapter->surprise_removed) {
				FUNC5(padapter, prframe);
				return 0;
			} else {
				return -EINVAL;
			}
		}
	}
	FUNC8(&ppending_recvframe_queue->lock, irql);
	/*s2. check if winstart_b(indicate_seq) needs to be updated*/
	if (!FUNC0(preorder_ctrl, pattrib->seq_num))
		goto _err_exit;
	/*s3. Insert all packet into Reorder Queue to maintain its ordering.*/
	if (!FUNC2(preorder_ctrl, prframe))
		goto _err_exit;
	/*s4.
	 * Indication process.
	 * After Packet dropping and Sliding Window shifting as above, we can
	 * now just indicate the packets with the SeqNum smaller than latest
	 * WinStart and buffer other packets.
	 *
	 * For Rx Reorder condition:
	 * 1. All packets with SeqNum smaller than WinStart => Indicate
	 * 2. All packets with SeqNum larger than or equal to
	 * WinStart => Buffer it.
	 */
	if (FUNC6(padapter, preorder_ctrl, false)) {
		FUNC3(&preorder_ctrl->reordering_ctrl_timer,
			  jiffies + FUNC4(REORDER_WAIT_TIME));
		FUNC9(&ppending_recvframe_queue->lock, irql);
	} else {
		FUNC9(&ppending_recvframe_queue->lock, irql);
		FUNC1(&preorder_ctrl->reordering_ctrl_timer);
	}
	return 0;
_err_exit:
	FUNC9(&ppending_recvframe_queue->lock, irql);
	return -ENOMEM;
}