#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct qeth_qdio_out_q {int /*<<< orphan*/  max_elements; TYPE_2__* bufstates; struct qeth_card* card; struct qeth_qdio_out_buffer** bufs; } ;
struct qeth_qdio_out_buffer {TYPE_4__* buffer; int /*<<< orphan*/  state; } ;
struct TYPE_7__ {scalar_t__ cq; } ;
struct qeth_card {TYPE_3__ options; } ;
struct TYPE_8__ {TYPE_1__* element; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  sflags; } ;

/* Variables and functions */
 int QDIO_OUTBUF_STATE_FLAG_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*,unsigned int) ; 
 scalar_t__ QETH_CQ_ENABLED ; 
 int /*<<< orphan*/  QETH_QDIO_BUF_PENDING ; 
 scalar_t__ QETH_QDIO_BUF_PRIMED ; 
 int /*<<< orphan*/  TX_NOTIFY_PENDING ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_qdio_out_q*,struct qeth_qdio_out_buffer*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct qeth_qdio_out_q*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_qdio_out_q*,struct qeth_qdio_out_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct qeth_qdio_out_q *queue,
				 unsigned int bidx, bool error, int budget)
{
	struct qeth_qdio_out_buffer *buffer = queue->bufs[bidx];
	u8 sflags = buffer->buffer->element[15].sflags;
	struct qeth_card *card = queue->card;

	if (queue->bufstates && (queue->bufstates[bidx].flags &
				 QDIO_OUTBUF_STATE_FLAG_PENDING)) {
		FUNC2(card->options.cq != QETH_CQ_ENABLED);

		if (FUNC3(&buffer->state, QETH_QDIO_BUF_PRIMED,
						   QETH_QDIO_BUF_PENDING) ==
		    QETH_QDIO_BUF_PRIMED)
			FUNC7(queue, buffer, TX_NOTIFY_PENDING);

		FUNC1(card, 5, "pel%u", bidx);

		/* prepare the queue slot for re-use: */
		FUNC9(buffer->buffer, queue->max_elements);
		if (FUNC6(queue, bidx)) {
			FUNC0(card, 2, "outofbuf");
			FUNC8(card);
		}

		return;
	}

	if (card->options.cq == QETH_CQ_ENABLED)
		FUNC7(queue, buffer,
				 FUNC5(sflags, 0));
	FUNC4(queue, buffer, error, budget);
}