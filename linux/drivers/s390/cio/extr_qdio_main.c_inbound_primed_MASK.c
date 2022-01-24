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
struct TYPE_3__ {int polling; int ack_count; unsigned int ack_start; } ;
struct TYPE_4__ {TYPE_1__ in; } ;
struct qdio_q {TYPE_2__ u; int /*<<< orphan*/  nr; int /*<<< orphan*/  irq_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DBF_INFO ; 
 int /*<<< orphan*/  SLSB_P_INPUT_ACK ; 
 int /*<<< orphan*/  SLSB_P_INPUT_NOT_INIT ; 
 int FUNC1 (unsigned int,int) ; 
 scalar_t__ FUNC2 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC3 (struct qdio_q*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qdio_q*,unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC5(struct qdio_q *q, unsigned int start,
				  int count)
{
	int new;

	FUNC0(DBF_INFO, q->irq_ptr, "in prim:%1d %02x", q->nr, count);

	/* for QEBSM the ACK was already set by EQBS */
	if (FUNC2(q)) {
		if (!q->u.in.polling) {
			q->u.in.polling = 1;
			q->u.in.ack_count = count;
			q->u.in.ack_start = start;
			return;
		}

		/* delete the previous ACK's */
		FUNC4(q, q->u.in.ack_start, SLSB_P_INPUT_NOT_INIT,
			       q->u.in.ack_count);
		q->u.in.ack_count = count;
		q->u.in.ack_start = start;
		return;
	}

	/*
	 * ACK the newest buffer. The ACK will be removed in qdio_stop_polling
	 * or by the next inbound run.
	 */
	new = FUNC1(start, count - 1);
	if (q->u.in.polling) {
		/* reset the previous ACK but first set the new one */
		FUNC3(q, new, SLSB_P_INPUT_ACK);
		FUNC3(q, q->u.in.ack_start, SLSB_P_INPUT_NOT_INIT);
	} else {
		q->u.in.polling = 1;
		FUNC3(q, new, SLSB_P_INPUT_ACK);
	}

	q->u.in.ack_start = new;
	count--;
	if (!count)
		return;
	/* need to change ALL buffers to get more interrupts */
	FUNC4(q, start, SLSB_P_INPUT_NOT_INIT, count);
}