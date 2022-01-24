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
struct sk_buff {int dummy; } ;
struct qeth_qdio_out_q {int next_buf_to_fill; scalar_t__ max_elements; int /*<<< orphan*/  set_pci_flags_count; int /*<<< orphan*/  state; scalar_t__ do_pack; int /*<<< orphan*/  used_buffers; struct qeth_qdio_out_buffer** bufs; } ;
struct qeth_qdio_out_buffer {scalar_t__ next_element_to_fill; int /*<<< orphan*/  state; } ;
struct qeth_hdr {int dummy; } ;
struct qeth_card {int /*<<< orphan*/  dev; } ;
struct netdev_queue {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int QDIO_MAX_BUFFERS_PER_Q ; 
 int /*<<< orphan*/  QETH_OUT_Q_LOCKED ; 
 int /*<<< orphan*/  QETH_OUT_Q_LOCKED_FLUSH ; 
 scalar_t__ QETH_OUT_Q_UNLOCKED ; 
 scalar_t__ QETH_QDIO_BUF_EMPTY ; 
 scalar_t__ QETH_QDIO_BUF_PRIMED ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_qdio_out_q*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_qdio_out_q*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bufs_pack ; 
 struct netdev_queue* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct netdev_queue*) ; 
 unsigned int FUNC11 (struct qeth_qdio_out_buffer*,struct sk_buff*,struct qeth_hdr*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct qeth_qdio_out_q*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct qeth_qdio_out_q*) ; 
 int FUNC14 (struct qeth_qdio_out_q*) ; 
 int FUNC15 (struct qeth_qdio_out_q*) ; 
 int /*<<< orphan*/  FUNC16 (struct qeth_qdio_out_q*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int skbs_pack ; 

int FUNC18(struct qeth_card *card, struct qeth_qdio_out_q *queue,
			struct sk_buff *skb, struct qeth_hdr *hdr,
			unsigned int offset, unsigned int hd_len,
			int elements_needed)
{
	struct qeth_qdio_out_buffer *buffer;
	unsigned int next_element;
	struct netdev_queue *txq;
	bool stopped = false;
	int start_index;
	int flush_count = 0;
	int do_pack = 0;
	int tmp;
	int rc = 0;

	/* spin until we get the queue ... */
	while (FUNC2(&queue->state, QETH_OUT_Q_UNLOCKED,
			      QETH_OUT_Q_LOCKED) != QETH_OUT_Q_UNLOCKED);
	start_index = queue->next_buf_to_fill;
	buffer = queue->bufs[queue->next_buf_to_fill];

	/* Just a sanity check, the wake/stop logic should ensure that we always
	 * get a free buffer.
	 */
	if (FUNC5(&buffer->state) != QETH_QDIO_BUF_EMPTY) {
		FUNC6(&queue->state, QETH_OUT_Q_UNLOCKED);
		return -EBUSY;
	}

	txq = FUNC8(card->dev, FUNC17(skb));

	/* check if we need to switch packing state of this queue */
	FUNC16(queue);
	if (queue->do_pack) {
		do_pack = 1;
		/* does packet fit in current buffer? */
		if (buffer->next_element_to_fill + elements_needed >
		    queue->max_elements) {
			/* ... no -> set state PRIMED */
			FUNC6(&buffer->state, QETH_QDIO_BUF_PRIMED);
			flush_count++;
			queue->next_buf_to_fill =
				(queue->next_buf_to_fill + 1) %
				QDIO_MAX_BUFFERS_PER_Q;
			buffer = queue->bufs[queue->next_buf_to_fill];

			/* We stepped forward, so sanity-check again: */
			if (FUNC5(&buffer->state) !=
			    QETH_QDIO_BUF_EMPTY) {
				FUNC12(queue, start_index,
							   flush_count);
				FUNC6(&queue->state,
						QETH_OUT_Q_UNLOCKED);
				rc = -EBUSY;
				goto out;
			}
		}
	}

	if (buffer->next_element_to_fill == 0 &&
	    FUNC4(&queue->used_buffers) >= QDIO_MAX_BUFFERS_PER_Q) {
		/* If a TX completion happens right _here_ and misses to wake
		 * the txq, then our re-check below will catch the race.
		 */
		FUNC1(queue, stopped);
		FUNC10(txq);
		stopped = true;
	}

	next_element = FUNC11(buffer, skb, hdr, offset, hd_len);

	if (queue->do_pack)
		FUNC1(queue, skbs_pack);
	if (!queue->do_pack || stopped || next_element >= queue->max_elements) {
		flush_count++;
		FUNC6(&buffer->state, QETH_QDIO_BUF_PRIMED);
		queue->next_buf_to_fill = (queue->next_buf_to_fill + 1) %
					  QDIO_MAX_BUFFERS_PER_Q;
	}

	if (flush_count)
		FUNC12(queue, start_index, flush_count);
	else if (!FUNC5(&queue->set_pci_flags_count))
		FUNC7(&queue->state, QETH_OUT_Q_LOCKED_FLUSH);
	/*
	 * queue->state will go from LOCKED -> UNLOCKED or from
	 * LOCKED_FLUSH -> LOCKED if output_handler wanted to 'notify' us
	 * (switch packing state or flush buffer to get another pci flag out).
	 * In that case we will enter this loop
	 */
	while (FUNC3(&queue->state)) {
		start_index = queue->next_buf_to_fill;
		/* check if we can go back to non-packing state */
		tmp = FUNC15(queue);
		/*
		 * check if we need to flush a packing buffer to get a pci
		 * flag out on the queue
		 */
		if (!tmp && !FUNC5(&queue->set_pci_flags_count))
			tmp = FUNC14(queue);
		if (tmp) {
			FUNC12(queue, start_index, tmp);
			flush_count += tmp;
		}
	}
out:
	/* at this point the queue is UNLOCKED again */
	if (do_pack)
		FUNC0(queue, bufs_pack, flush_count);

	if (stopped && !FUNC13(queue))
		FUNC9(txq);
	return rc;
}