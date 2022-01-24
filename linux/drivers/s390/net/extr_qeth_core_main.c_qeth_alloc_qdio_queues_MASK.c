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
struct qeth_qdio_out_q {int queue_no; int /*<<< orphan*/ ** bufs; int /*<<< orphan*/  timer; struct qeth_card* card; } ;
struct TYPE_2__ {int no_out_queues; int /*<<< orphan*/  state; int /*<<< orphan*/ * in_q; struct qeth_qdio_out_q** out_qs; } ;
struct qeth_card {TYPE_1__ qdio; } ;

/* Variables and functions */
 int ENOMEM ; 
 int QDIO_MAX_BUFFERS_PER_Q ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,struct qeth_qdio_out_q**,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  QETH_QDIO_ALLOCATED ; 
 scalar_t__ QETH_QDIO_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct qeth_card*) ; 
 scalar_t__ FUNC8 (struct qeth_card*) ; 
 struct qeth_qdio_out_q* FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC12 (struct qeth_qdio_out_q*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct qeth_qdio_out_q*,int) ; 
 int /*<<< orphan*/  qeth_qdio_outbuf_cache ; 
 int /*<<< orphan*/  qeth_tx_completion_timer ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct qeth_card *card)
{
	int i, j;

	FUNC1(card, 2, "allcqdbf");

	if (FUNC4(&card->qdio.state, QETH_QDIO_UNINITIALIZED,
		QETH_QDIO_ALLOCATED) != QETH_QDIO_UNINITIALIZED)
		return 0;

	FUNC1(card, 2, "inq");
	card->qdio.in_q = FUNC10();
	if (!card->qdio.in_q)
		goto out_nomem;

	/* inbound buffer pool */
	if (FUNC7(card))
		goto out_freeinq;

	/* outbound */
	for (i = 0; i < card->qdio.no_out_queues; ++i) {
		struct qeth_qdio_out_q *queue;

		queue = FUNC9();
		if (!queue)
			goto out_freeoutq;
		FUNC2(card, 2, "outq %i", i);
		FUNC0(card, 2, &queue, sizeof(void *));
		card->qdio.out_qs[i] = queue;
		queue->card = card;
		queue->queue_no = i;
		FUNC15(&queue->timer, qeth_tx_completion_timer, 0);

		/* give outbound qeth_qdio_buffers their qdio_buffers */
		for (j = 0; j < QDIO_MAX_BUFFERS_PER_Q; ++j) {
			FUNC3(queue->bufs[j]);
			if (FUNC14(queue, j))
				goto out_freeoutqbufs;
		}
	}

	/* completion */
	if (FUNC8(card))
		goto out_freeoutq;

	return 0;

out_freeoutqbufs:
	while (j > 0) {
		--j;
		FUNC6(qeth_qdio_outbuf_cache,
				card->qdio.out_qs[i]->bufs[j]);
		card->qdio.out_qs[i]->bufs[j] = NULL;
	}
out_freeoutq:
	while (i > 0) {
		FUNC12(card->qdio.out_qs[--i]);
		card->qdio.out_qs[i] = NULL;
	}
	FUNC11(card);
out_freeinq:
	FUNC13(card->qdio.in_q);
	card->qdio.in_q = NULL;
out_nomem:
	FUNC5(&card->qdio.state, QETH_QDIO_UNINITIALIZED);
	return -ENOMEM;
}