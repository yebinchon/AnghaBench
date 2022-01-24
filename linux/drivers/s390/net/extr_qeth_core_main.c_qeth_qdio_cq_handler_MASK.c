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
struct qeth_qdio_q {int next_buf_to_init; struct qdio_buffer** qdio_bufs; } ;
struct TYPE_6__ {struct qeth_qdio_q* c_q; } ;
struct qeth_card {TYPE_3__ qdio; TYPE_2__* gdev; int /*<<< orphan*/  dev; } ;
struct qdio_buffer {TYPE_1__* element; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  QDIO_FLAG_SYNC_INPUT ; 
 int QDIO_MAX_BUFFERS_PER_Q ; 
 int QDIO_MAX_ELEMENTS_PER_BUFFER ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_card*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_card*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC9 (struct qdio_buffer*,int) ; 

__attribute__((used)) static void FUNC10(struct qeth_card *card, unsigned int qdio_err,
				 unsigned int queue, int first_element,
				 int count)
{
	struct qeth_qdio_q *cq = card->qdio.c_q;
	int i;
	int rc;

	if (!FUNC6(card, queue))
		return;

	FUNC2(card, 5, "qcqhe%d", first_element);
	FUNC2(card, 5, "qcqhc%d", count);
	FUNC2(card, 5, "qcqherr%d", qdio_err);

	if (qdio_err) {
		FUNC5(card->dev);
		FUNC8(card);
		return;
	}

	for (i = first_element; i < first_element + count; ++i) {
		int bidx = i % QDIO_MAX_BUFFERS_PER_Q;
		struct qdio_buffer *buffer = cq->qdio_bufs[bidx];
		int e = 0;

		while ((e < QDIO_MAX_ELEMENTS_PER_BUFFER) &&
		       buffer->element[e].addr) {
			unsigned long phys_aob_addr;

			phys_aob_addr = (unsigned long) buffer->element[e].addr;
			FUNC7(card, phys_aob_addr);
			++e;
		}
		FUNC9(buffer, QDIO_MAX_ELEMENTS_PER_BUFFER);
	}
	rc = FUNC4(FUNC0(card), QDIO_FLAG_SYNC_INPUT, queue,
		    card->qdio.c_q->next_buf_to_init,
		    count);
	if (rc) {
		FUNC3(&card->gdev->dev,
			"QDIO reported an error, rc=%i\n", rc);
		FUNC1(card, 2, "qcqherr");
	}
	card->qdio.c_q->next_buf_to_init = (card->qdio.c_q->next_buf_to_init
				   + count) % QDIO_MAX_BUFFERS_PER_Q;
}