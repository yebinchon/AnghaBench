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
struct qeth_qdio_out_q {unsigned int queue_no; int /*<<< orphan*/  used_buffers; struct qeth_qdio_out_buffer** bufs; struct qeth_card* card; } ;
struct qeth_qdio_out_buffer {scalar_t__ bytes; int /*<<< orphan*/  skb_list; } ;
struct qeth_card {struct net_device* dev; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct napi_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int QDIO_MAX_BUFFERS_PER_Q ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_qdio_out_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  completion_yield ; 
 int /*<<< orphan*/  FUNC4 (struct napi_struct*) ; 
 scalar_t__ FUNC5 (struct napi_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct napi_struct*) ; 
 struct netdev_queue* FUNC7 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct netdev_queue*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC9 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct netdev_queue*) ; 
 int FUNC11 (int /*<<< orphan*/ ,unsigned int,int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (struct qeth_qdio_out_q*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct qeth_card*,struct qeth_qdio_out_buffer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct qeth_qdio_out_q*,unsigned int,unsigned int,int) ; 
 struct qeth_qdio_out_q* FUNC16 (struct napi_struct*) ; 
 scalar_t__ FUNC17 (struct qeth_qdio_out_q*) ; 
 int /*<<< orphan*/  FUNC18 (struct qeth_qdio_out_q*) ; 
 int /*<<< orphan*/  FUNC19 (struct qeth_qdio_out_q*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct napi_struct *napi, int budget)
{
	struct qeth_qdio_out_q *queue = FUNC16(napi);
	unsigned int queue_no = queue->queue_no;
	struct qeth_card *card = queue->card;
	struct net_device *dev = card->dev;
	unsigned int work_done = 0;
	struct netdev_queue *txq;

	txq = FUNC7(dev, FUNC14(dev, queue_no));

	while (1) {
		unsigned int start, error, i;
		unsigned int packets = 0;
		unsigned int bytes = 0;
		int completed;

		if (FUNC17(queue)) {
			FUNC4(napi);
			return 0;
		}

		/* Give the CPU a breather: */
		if (work_done >= QDIO_MAX_BUFFERS_PER_Q) {
			FUNC2(queue, completion_yield);
			if (FUNC5(napi, 0))
				FUNC6(napi);
			return 0;
		}

		completed = FUNC11(FUNC0(card), queue_no, false,
					       &start, &error);
		if (completed <= 0) {
			/* Ensure we see TX completion for pending work: */
			if (FUNC5(napi, 0))
				FUNC19(queue);
			return 0;
		}

		for (i = start; i < start + completed; i++) {
			struct qeth_qdio_out_buffer *buffer;
			unsigned int bidx = FUNC1(i);

			buffer = queue->bufs[bidx];
			packets += FUNC20(&buffer->skb_list);
			bytes += buffer->bytes;

			FUNC13(card, buffer, error);
			FUNC15(queue, bidx, error, budget);
			FUNC12(queue, bidx, false);
		}

		FUNC8(txq, packets, bytes);
		FUNC3(completed, &queue->used_buffers);
		work_done += completed;

		/* xmit may have observed the full-condition, but not yet
		 * stopped the txq. In which case the code below won't trigger.
		 * So before returning, xmit will re-check the txq's fill level
		 * and wake it up if needed.
		 */
		if (FUNC9(txq) &&
		    !FUNC18(queue))
			FUNC10(txq);
	}
}