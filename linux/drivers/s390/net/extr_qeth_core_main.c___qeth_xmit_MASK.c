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
struct qeth_qdio_out_q {size_t bulk_start; unsigned int max_elements; struct qeth_hdr* prev_hdr; int /*<<< orphan*/  used_buffers; struct qeth_qdio_out_buffer** bufs; } ;
struct qeth_qdio_out_buffer {unsigned int next_element_to_fill; unsigned int bytes; int /*<<< orphan*/  state; } ;
struct qeth_hdr {int dummy; } ;
struct qeth_card {int /*<<< orphan*/  dev; } ;
struct netdev_queue {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ QDIO_MAX_BUFFERS_PER_Q ; 
 scalar_t__ QETH_QDIO_BUF_EMPTY ; 
 int /*<<< orphan*/  QETH_QDIO_BUF_PRIMED ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_qdio_out_q*,int) ; 
 int FUNC1 (struct netdev_queue*,unsigned int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct netdev_queue*) ; 
 unsigned int FUNC9 (struct sk_buff*) ; 
 unsigned int FUNC10 (struct qeth_qdio_out_buffer*,struct sk_buff*,struct qeth_hdr*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct qeth_qdio_out_q*) ; 
 int /*<<< orphan*/  FUNC12 (struct qeth_qdio_out_q*,struct qeth_qdio_out_buffer*,struct sk_buff*,struct qeth_hdr*) ; 
 int /*<<< orphan*/  FUNC13 (struct qeth_qdio_out_q*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC15(struct qeth_card *card, struct qeth_qdio_out_q *queue,
		       struct sk_buff *skb, unsigned int elements,
		       struct qeth_hdr *hdr, unsigned int offset,
		       unsigned int hd_len)
{
	struct qeth_qdio_out_buffer *buffer = queue->bufs[queue->bulk_start];
	unsigned int bytes = FUNC9(skb);
	unsigned int next_element;
	struct netdev_queue *txq;
	bool stopped = false;
	bool flush;

	txq = FUNC5(card->dev, FUNC14(skb));

	/* Just a sanity check, the wake/stop logic should ensure that we always
	 * get a free buffer.
	 */
	if (FUNC3(&buffer->state) != QETH_QDIO_BUF_EMPTY)
		return -EBUSY;

	if ((buffer->next_element_to_fill + elements > queue->max_elements) ||
	    !FUNC12(queue, buffer, skb, hdr)) {
		FUNC4(&buffer->state, QETH_QDIO_BUF_PRIMED);
		FUNC11(queue);
		buffer = queue->bufs[queue->bulk_start];

		/* Sanity-check again: */
		if (FUNC3(&buffer->state) != QETH_QDIO_BUF_EMPTY)
			return -EBUSY;
	}

	if (buffer->next_element_to_fill == 0 &&
	    FUNC2(&queue->used_buffers) >= QDIO_MAX_BUFFERS_PER_Q) {
		/* If a TX completion happens right _here_ and misses to wake
		 * the txq, then our re-check below will catch the race.
		 */
		FUNC0(queue, stopped);
		FUNC8(txq);
		stopped = true;
	}

	next_element = FUNC10(buffer, skb, hdr, offset, hd_len);
	buffer->bytes += bytes;
	queue->prev_hdr = hdr;

	flush = FUNC1(txq, bytes,
				       !stopped && FUNC6());

	if (flush || next_element >= queue->max_elements) {
		FUNC4(&buffer->state, QETH_QDIO_BUF_PRIMED);
		FUNC11(queue);
	}

	if (stopped && !FUNC13(queue))
		FUNC7(txq);
	return 0;
}