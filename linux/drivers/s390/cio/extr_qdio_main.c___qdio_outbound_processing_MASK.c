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
struct TYPE_4__ {int /*<<< orphan*/  timer; scalar_t__ pci_out_enabled; } ;
struct TYPE_5__ {TYPE_1__ out; } ;
struct qdio_q {unsigned int first_to_check; TYPE_2__ u; TYPE_3__* irq_ptr; int /*<<< orphan*/  nr_buf_used; } ;
struct TYPE_6__ {scalar_t__ state; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ QDIO_IRQ_STATE_ACTIVE ; 
 scalar_t__ QDIO_ZFCP_QFMT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (unsigned int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct qdio_q*,int) ; 
 scalar_t__ FUNC8 (struct qdio_q*) ; 
 int FUNC9 (struct qdio_q*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC11 (struct qdio_q*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct qdio_q*) ; 
 int /*<<< orphan*/  tasklet_outbound ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct qdio_q *q)
{
	unsigned int start = q->first_to_check;
	int count;

	FUNC11(q, tasklet_outbound);
	FUNC0(FUNC2(&q->nr_buf_used) < 0);

	count = FUNC9(q, start);
	if (count) {
		q->first_to_check = FUNC1(start, count);
		FUNC7(q, count);
	}

	if (FUNC12(q) == QDIO_ZFCP_QFMT && !FUNC6(q->irq_ptr) &&
	    !FUNC8(q))
		goto sched;

	if (q->u.out.pci_out_enabled)
		return;

	/*
	 * Now we know that queue type is either qeth without pci enabled
	 * or HiperSockets. Make sure buffer switch from PRIMED to EMPTY
	 * is noticed and outbound_handler is called after some time.
	 */
	if (FUNC8(q))
		FUNC3(&q->u.out.timer);
	else
		if (!FUNC13(&q->u.out.timer) &&
		    FUNC4(q->irq_ptr->state == QDIO_IRQ_STATE_ACTIVE))
			FUNC5(&q->u.out.timer, jiffies + 10 * HZ);
	return;

sched:
	FUNC10(q);
}