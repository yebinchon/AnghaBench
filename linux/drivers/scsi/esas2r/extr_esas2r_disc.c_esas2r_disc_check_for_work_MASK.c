#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct esas2r_request {scalar_t__ req_stat; scalar_t__ timeout; int /*<<< orphan*/ * interrupt_cx; } ;
struct esas2r_adapter {struct esas2r_request general_req; } ;

/* Variables and functions */
 scalar_t__ RQ_MAX_TIMEOUT ; 
 scalar_t__ RS_PENDING ; 
 scalar_t__ RS_STARTED ; 
 scalar_t__ RS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct esas2r_adapter*,struct esas2r_request*) ; 

void FUNC6(struct esas2r_adapter *a)
{
	struct esas2r_request *rq = &a->general_req;

	/* service any pending interrupts first */

	FUNC4(a);

	/*
	 * now, interrupt processing may have queued up a discovery event.  go
	 * see if we have one to start.  we couldn't start it in the ISR since
	 * polled discovery would cause a deadlock.
	 */

	FUNC2(a);

	if (rq->interrupt_cx == NULL)
		return;

	if (rq->req_stat == RS_STARTED
	    && rq->timeout <= RQ_MAX_TIMEOUT) {
		/* wait for the current discovery request to complete. */
		FUNC5(a, rq);

		if (rq->req_stat == RS_TIMEOUT) {
			FUNC0(a, rq);
			FUNC3(a);
			return;
		}
	}

	if (rq->req_stat == RS_PENDING
	    || rq->req_stat == RS_STARTED)
		return;

	FUNC1(a, rq);
}