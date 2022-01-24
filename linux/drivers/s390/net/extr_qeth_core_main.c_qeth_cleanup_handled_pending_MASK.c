#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qeth_qdio_out_q {TYPE_3__* card; struct qeth_qdio_out_buffer** bufs; } ;
struct qeth_qdio_out_buffer {int /*<<< orphan*/  state; struct qeth_qdio_out_buffer* next_pending; TYPE_2__* q; } ;
struct TYPE_5__ {scalar_t__ cq; } ;
struct TYPE_7__ {TYPE_1__ options; } ;
struct TYPE_6__ {TYPE_3__* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,char*,long) ; 
 scalar_t__ QETH_CQ_ENABLED ; 
 scalar_t__ QETH_QDIO_BUF_HANDLED_DELAYED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct qeth_qdio_out_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_qdio_out_q*,int) ; 
 int /*<<< orphan*/  qeth_qdio_outbuf_cache ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_qdio_out_buffer*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct qeth_qdio_out_q *q, int bidx,
					 int forced_cleanup)
{
	if (q->card->options.cq != QETH_CQ_ENABLED)
		return;

	if (q->bufs[bidx]->next_pending != NULL) {
		struct qeth_qdio_out_buffer *head = q->bufs[bidx];
		struct qeth_qdio_out_buffer *c = q->bufs[bidx]->next_pending;

		while (c) {
			if (forced_cleanup ||
			    FUNC3(&c->state) ==
			      QETH_QDIO_BUF_HANDLED_DELAYED) {
				struct qeth_qdio_out_buffer *f = c;
				FUNC0(f->q->card, 5, "fp");
				FUNC1(f->q->card, 5, "%lx", (long) f);
				/* release here to avoid interleaving between
				   outbound tasklet and inbound tasklet
				   regarding notifications and lifecycle */
				FUNC6(c, forced_cleanup, 0);

				c = f->next_pending;
				FUNC2(head->next_pending != f);
				head->next_pending = c;
				FUNC4(qeth_qdio_outbuf_cache, f);
			} else {
				head = c;
				c = c->next_pending;
			}

		}
	}
	if (forced_cleanup && (FUNC3(&(q->bufs[bidx]->state)) ==
					QETH_QDIO_BUF_HANDLED_DELAYED)) {
		/* for recovery situations */
		FUNC5(q, bidx);
		FUNC0(q->card, 2, "clprecov");
	}
}