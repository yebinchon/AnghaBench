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
struct qeth_qdio_out_q {int next_buf_to_fill; int do_pack; int /*<<< orphan*/  state; int /*<<< orphan*/  set_pci_flags_count; int /*<<< orphan*/  used_buffers; } ;

/* Variables and functions */
 scalar_t__ QETH_LOW_WATERMARK_PACK ; 
 int /*<<< orphan*/  QETH_OUT_Q_LOCKED_FLUSH ; 
 scalar_t__ QETH_OUT_Q_UNLOCKED ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_qdio_out_q*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  bufs_pack ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_qdio_out_q*,int,int) ; 
 scalar_t__ FUNC6 (struct qeth_qdio_out_q*) ; 
 scalar_t__ FUNC7 (struct qeth_qdio_out_q*) ; 

__attribute__((used)) static void FUNC8(struct qeth_qdio_out_q *queue)
{
	int index;
	int flush_cnt = 0;
	int q_was_packing = 0;

	/*
	 * check if weed have to switch to non-packing mode or if
	 * we have to get a pci flag out on the queue
	 */
	if ((FUNC1(&queue->used_buffers) <= QETH_LOW_WATERMARK_PACK) ||
	    !FUNC1(&queue->set_pci_flags_count)) {
		if (FUNC3(&queue->state, QETH_OUT_Q_LOCKED_FLUSH) ==
				QETH_OUT_Q_UNLOCKED) {
			/*
			 * If we get in here, there was no action in
			 * do_send_packet. So, we check if there is a
			 * packing buffer to be flushed here.
			 */
			index = queue->next_buf_to_fill;
			q_was_packing = queue->do_pack;
			/* queue->do_pack may change */
			FUNC4();
			flush_cnt += FUNC7(queue);
			if (!flush_cnt &&
			    !FUNC1(&queue->set_pci_flags_count))
				flush_cnt += FUNC6(queue);
			if (q_was_packing)
				FUNC0(queue, bufs_pack, flush_cnt);
			if (flush_cnt)
				FUNC5(queue, index, flush_cnt);
			FUNC2(&queue->state, QETH_OUT_Q_UNLOCKED);
		}
	}
}