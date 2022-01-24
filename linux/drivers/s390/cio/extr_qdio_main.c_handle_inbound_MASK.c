#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ ack_count; int ack_start; scalar_t__ polling; } ;
struct TYPE_4__ {TYPE_1__ in; } ;
struct qdio_q {int /*<<< orphan*/  nr_buf_used; TYPE_2__ u; } ;

/* Variables and functions */
 int QDIO_MAX_BUFFERS_PER_Q ; 
 int /*<<< orphan*/  SLSB_CU_INPUT_EMPTY ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  inbound_call ; 
 scalar_t__ FUNC3 (struct qdio_q*) ; 
 scalar_t__ FUNC4 (struct qdio_q*) ; 
 int FUNC5 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC6 (struct qdio_q*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct qdio_q*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct qdio_q *q, unsigned int callflags,
			  int bufnr, int count)
{
	int diff;

	FUNC6(q, inbound_call);

	if (!q->u.in.polling)
		goto set;

	/* protect against stop polling setting an ACK for an emptied slsb */
	if (count == QDIO_MAX_BUFFERS_PER_Q) {
		/* overwriting everything, just delete polling status */
		q->u.in.polling = 0;
		q->u.in.ack_count = 0;
		goto set;
	} else if (FUNC2(q->u.in.ack_start, bufnr, count)) {
		if (FUNC3(q)) {
			/* partial overwrite, just update ack_start */
			diff = FUNC0(bufnr, count);
			diff = FUNC8(diff, q->u.in.ack_start);
			q->u.in.ack_count -= diff;
			if (q->u.in.ack_count <= 0) {
				q->u.in.polling = 0;
				q->u.in.ack_count = 0;
				goto set;
			}
			q->u.in.ack_start = FUNC0(q->u.in.ack_start, diff);
		}
		else
			/* the only ACK will be deleted, so stop polling */
			q->u.in.polling = 0;
	}

set:
	count = FUNC7(q, bufnr, SLSB_CU_INPUT_EMPTY, count);
	FUNC1(count, &q->nr_buf_used);

	if (FUNC4(q))
		return FUNC5(q);

	return 0;
}