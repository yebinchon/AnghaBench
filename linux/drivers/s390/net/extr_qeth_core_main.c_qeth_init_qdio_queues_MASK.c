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
struct qeth_rx {int dummy; } ;
struct qeth_qdio_out_q {int /*<<< orphan*/  state; int /*<<< orphan*/  set_pci_flags_count; int /*<<< orphan*/  used_buffers; scalar_t__ bulk_start; int /*<<< orphan*/ * prev_hdr; scalar_t__ do_pack; scalar_t__ next_buf_to_fill; int /*<<< orphan*/  max_elements; int /*<<< orphan*/  qdio_bufs; } ;
struct TYPE_5__ {int buf_count; } ;
struct TYPE_6__ {unsigned int no_out_queues; struct qeth_qdio_out_q** out_qs; TYPE_2__ in_buf_pool; TYPE_1__* in_q; } ;
struct qeth_card {int /*<<< orphan*/  dev; TYPE_3__ qdio; int /*<<< orphan*/  rx; } ;
struct TYPE_4__ {int next_buf_to_init; int /*<<< orphan*/ * bufs; int /*<<< orphan*/  qdio_bufs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  QDIO_FLAG_SYNC_INPUT ; 
 int /*<<< orphan*/  QDIO_MAX_BUFFERS_PER_Q ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 
 int /*<<< orphan*/  QETH_OUT_Q_UNLOCKED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC11 (struct qeth_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct qeth_card*) ; 

int FUNC13(struct qeth_card *card)
{
	unsigned int i;
	int rc;

	FUNC1(card, 2, "initqdqs");

	/* inbound queue */
	FUNC9(card->qdio.in_q->qdio_bufs, QDIO_MAX_BUFFERS_PER_Q);
	FUNC6(&card->rx, 0, sizeof(struct qeth_rx));
	FUNC12(card);
	/*give only as many buffers to hardware as we have buffer pool entries*/
	for (i = 0; i < card->qdio.in_buf_pool.buf_count - 1; ++i)
		FUNC11(card, &card->qdio.in_q->bufs[i]);
	card->qdio.in_q->next_buf_to_init =
		card->qdio.in_buf_pool.buf_count - 1;
	rc = FUNC5(FUNC0(card), QDIO_FLAG_SYNC_INPUT, 0, 0,
		     card->qdio.in_buf_pool.buf_count - 1);
	if (rc) {
		FUNC2(card, 2, "1err%d", rc);
		return rc;
	}

	/* completion */
	rc = FUNC10(card);
	if (rc) {
		return rc;
	}

	/* outbound queue */
	for (i = 0; i < card->qdio.no_out_queues; ++i) {
		struct qeth_qdio_out_q *queue = card->qdio.out_qs[i];

		FUNC9(queue->qdio_bufs, QDIO_MAX_BUFFERS_PER_Q);
		queue->max_elements = FUNC3(card);
		queue->next_buf_to_fill = 0;
		queue->do_pack = 0;
		queue->prev_hdr = NULL;
		queue->bulk_start = 0;
		FUNC4(&queue->used_buffers, 0);
		FUNC4(&queue->set_pci_flags_count, 0);
		FUNC4(&queue->state, QETH_OUT_Q_UNLOCKED);
		FUNC8(FUNC7(card->dev, i));
	}
	return 0;
}