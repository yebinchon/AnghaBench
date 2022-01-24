#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int no_out_queues; int /*<<< orphan*/ ** out_qs; TYPE_3__* in_q; int /*<<< orphan*/  state; } ;
struct qeth_card {TYPE_2__ qdio; int /*<<< orphan*/  buffer_reclaim_work; } ;
struct TYPE_6__ {TYPE_1__* bufs; } ;
struct TYPE_4__ {scalar_t__ rx_skb; } ;

/* Variables and functions */
 int QDIO_MAX_BUFFERS_PER_Q ; 
 scalar_t__ QETH_QDIO_UNINITIALIZED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC7(struct qeth_card *card)
{
	int i, j;

	if (FUNC0(&card->qdio.state, QETH_QDIO_UNINITIALIZED) ==
		QETH_QDIO_UNINITIALIZED)
		return;

	FUNC4(card);
	FUNC1(&card->buffer_reclaim_work);
	for (j = 0; j < QDIO_MAX_BUFFERS_PER_Q; ++j) {
		if (card->qdio.in_q->bufs[j].rx_skb)
			FUNC2(card->qdio.in_q->bufs[j].rx_skb);
	}
	FUNC6(card->qdio.in_q);
	card->qdio.in_q = NULL;
	/* inbound buffer pool */
	FUNC3(card);
	/* free outbound qdio_qs */
	for (i = 0; i < card->qdio.no_out_queues; i++) {
		FUNC5(card->qdio.out_qs[i]);
		card->qdio.out_qs[i] = NULL;
	}
}