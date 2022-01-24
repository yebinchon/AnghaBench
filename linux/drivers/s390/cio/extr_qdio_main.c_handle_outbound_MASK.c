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
struct TYPE_6__ {int pci_out_enabled; int /*<<< orphan*/  timer; scalar_t__ use_cq; } ;
struct TYPE_5__ {TYPE_3__ out; } ;
struct qdio_q {TYPE_2__ u; TYPE_1__* irq_ptr; int /*<<< orphan*/  nr_buf_used; } ;
struct TYPE_4__ {unsigned int scan_threshold; scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 unsigned int QDIO_FLAG_PCI_OUT ; 
 scalar_t__ QDIO_IQDIO_QFMT ; 
 scalar_t__ QDIO_IRQ_STATE_ACTIVE ; 
 int QDIO_MAX_BUFFERS_PER_Q ; 
 unsigned char SLSB_CU_OUTPUT_PRIMED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fast_requeue ; 
 scalar_t__ FUNC2 (struct qdio_q*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct qdio_q*) ; 
 scalar_t__ FUNC6 (struct qdio_q*) ; 
 int /*<<< orphan*/  outbound_call ; 
 int /*<<< orphan*/  outbound_queue_full ; 
 int /*<<< orphan*/  pci_request_int ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 unsigned long FUNC8 (TYPE_3__*,int) ; 
 int FUNC9 (struct qdio_q*,unsigned long) ; 
 int FUNC10 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC11 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC12 (struct qdio_q*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct qdio_q*) ; 
 int FUNC14 (struct qdio_q*,int,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct qdio_q *q, unsigned int callflags,
			   int bufnr, int count)
{
	const unsigned int scan_threshold = q->irq_ptr->scan_threshold;
	unsigned char state = 0;
	int used, rc = 0;

	FUNC12(q, outbound_call);

	count = FUNC14(q, bufnr, SLSB_CU_OUTPUT_PRIMED, count);
	used = FUNC1(count, &q->nr_buf_used);

	if (used == QDIO_MAX_BUFFERS_PER_Q)
		FUNC12(q, outbound_queue_full);

	if (callflags & QDIO_FLAG_PCI_OUT) {
		q->u.out.pci_out_enabled = 1;
		FUNC12(q, pci_request_int);
	} else
		q->u.out.pci_out_enabled = 0;

	if (FUNC13(q) == QDIO_IQDIO_QFMT) {
		unsigned long phys_aob = 0;

		/* One SIGA-W per buffer required for unicast HSI */
		FUNC0(count > 1 && !FUNC5(q));

		if (q->u.out.use_cq)
			phys_aob = FUNC8(&q->u.out, bufnr);

		rc = FUNC9(q, phys_aob);
	} else if (FUNC6(q)) {
		rc = FUNC10(q);
	} else if (count < QDIO_MAX_BUFFERS_PER_Q &&
		   FUNC2(q, FUNC7(bufnr), &state, 0) > 0 &&
		   state == SLSB_CU_OUTPUT_PRIMED) {
		/* The previous buffer is not processed yet, tack on. */
		FUNC12(q, fast_requeue);
	} else {
		rc = FUNC9(q, 0);
	}

	/* Let drivers implement their own completion scanning: */
	if (!scan_threshold)
		return rc;

	/* in case of SIGA errors we must process the error immediately */
	if (used >= scan_threshold || rc)
		FUNC11(q);
	else
		/* free the SBALs in case of no further traffic */
		if (!FUNC15(&q->u.out.timer) &&
		    FUNC3(q->irq_ptr->state == QDIO_IRQ_STATE_ACTIVE))
			FUNC4(&q->u.out.timer, jiffies + HZ);
	return rc;
}