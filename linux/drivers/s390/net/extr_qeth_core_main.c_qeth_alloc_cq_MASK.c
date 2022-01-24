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
struct TYPE_7__ {int no_in_queues; int no_out_queues; int /*<<< orphan*/ * c_q; TYPE_2__** out_qs; struct qdio_outbuf_state* out_bufstates; } ;
struct TYPE_5__ {scalar_t__ cq; } ;
struct qeth_card {TYPE_4__* gdev; TYPE_3__ qdio; TYPE_1__ options; } ;
struct qdio_outbuf_state {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {struct qdio_outbuf_state* bufstates; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int QDIO_MAX_BUFFERS_PER_Q ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*,int) ; 
 scalar_t__ QETH_CQ_ENABLED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct qdio_outbuf_state* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct qeth_card *card)
{
	int rc;

	if (card->options.cq == QETH_CQ_ENABLED) {
		int i;
		struct qdio_outbuf_state *outbuf_states;

		FUNC0(card, 2, "cqon");
		card->qdio.c_q = FUNC4();
		if (!card->qdio.c_q) {
			rc = -1;
			goto kmsg_out;
		}
		card->qdio.no_in_queues = 2;
		card->qdio.out_bufstates =
			FUNC3(card->qdio.no_out_queues *
					QDIO_MAX_BUFFERS_PER_Q,
				sizeof(struct qdio_outbuf_state),
				GFP_KERNEL);
		outbuf_states = card->qdio.out_bufstates;
		if (outbuf_states == NULL) {
			rc = -1;
			goto free_cq_out;
		}
		for (i = 0; i < card->qdio.no_out_queues; ++i) {
			card->qdio.out_qs[i]->bufstates = outbuf_states;
			outbuf_states += QDIO_MAX_BUFFERS_PER_Q;
		}
	} else {
		FUNC0(card, 2, "nocq");
		card->qdio.c_q = NULL;
		card->qdio.no_in_queues = 1;
	}
	FUNC1(card, 2, "iqc%d", card->qdio.no_in_queues);
	rc = 0;
out:
	return rc;
free_cq_out:
	FUNC5(card->qdio.c_q);
	card->qdio.c_q = NULL;
kmsg_out:
	FUNC2(&card->gdev->dev, "Failed to create completion queue\n");
	goto out;
}