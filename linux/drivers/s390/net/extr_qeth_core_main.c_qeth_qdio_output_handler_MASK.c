#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qeth_qdio_out_q {int /*<<< orphan*/  used_buffers; struct qeth_qdio_out_buffer** bufs; } ;
struct qeth_qdio_out_buffer {int dummy; } ;
struct TYPE_2__ {struct qeth_qdio_out_q** out_qs; } ;
struct qeth_card {struct net_device* dev; TYPE_1__ qdio; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct ccw_device {int dummy; } ;

/* Variables and functions */
 unsigned int QDIO_ERROR_FATAL ; 
 int QDIO_MAX_BUFFERS_PER_Q ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 struct netdev_queue* FUNC2 (struct net_device*,int) ; 
 scalar_t__ FUNC3 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_qdio_out_q*) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_qdio_out_q*,struct qeth_qdio_out_buffer*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_card*,struct qeth_qdio_out_buffer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct qeth_qdio_out_q*) ; 
 int /*<<< orphan*/  FUNC10 (struct qeth_card*) ; 

__attribute__((used)) static void FUNC11(struct ccw_device *ccwdev,
				     unsigned int qdio_error, int __queue,
				     int first_element, int count,
				     unsigned long card_ptr)
{
	struct qeth_card *card        = (struct qeth_card *) card_ptr;
	struct qeth_qdio_out_q *queue = card->qdio.out_qs[__queue];
	struct qeth_qdio_out_buffer *buffer;
	struct net_device *dev = card->dev;
	struct netdev_queue *txq;
	int i;

	FUNC0(card, 6, "qdouhdl");
	if (qdio_error & QDIO_ERROR_FATAL) {
		FUNC0(card, 2, "achkcond");
		FUNC4(dev);
		FUNC10(card);
		return;
	}

	for (i = first_element; i < (first_element + count); ++i) {
		int bidx = i % QDIO_MAX_BUFFERS_PER_Q;
		buffer = queue->bufs[bidx];
		FUNC8(card, buffer, qdio_error);
		FUNC7(queue, buffer, qdio_error, 0);
	}

	FUNC1(count, &queue->used_buffers);
	FUNC6(queue);

	txq = FUNC2(dev, __queue);
	/* xmit may have observed the full-condition, but not yet stopped the
	 * txq. In which case the code below won't trigger. So before returning,
	 * xmit will re-check the txq's fill level and wake it up if needed.
	 */
	if (FUNC3(txq) && !FUNC9(queue))
		FUNC5(txq);
}