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
struct esas2r_request {scalar_t__ req_stat; int flags; int /*<<< orphan*/  comp_cb; } ;
struct esas2r_adapter {scalar_t__ init_msg; int /*<<< orphan*/  queue_lock; struct esas2r_request general_req; } ;

/* Variables and functions */
 scalar_t__ ESAS2R_INIT_MSG_REINIT ; 
 scalar_t__ ESAS2R_INIT_MSG_START ; 
 int /*<<< orphan*/  ESAS2R_LOG_CRIT ; 
 int RF_FAILURE_OK ; 
 scalar_t__ RS_PENDING ; 
 scalar_t__ RS_SUCCESS ; 
 scalar_t__ RS_TIMEOUT ; 
 int /*<<< orphan*/  esas2r_dummy_complete ; 
 scalar_t__ FUNC0 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_request*,struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_request*,struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC8(struct esas2r_adapter *a)
{
	bool success = true;
	struct esas2r_request *rq = &a->general_req;

	FUNC3(rq, a);
	rq->comp_cb = esas2r_dummy_complete;

	if (a->init_msg == 0)
		a->init_msg = ESAS2R_INIT_MSG_REINIT;

	while (a->init_msg) {
		if (FUNC0(a, rq)) {
			unsigned long flags;
			while (true) {
				FUNC6(&a->queue_lock, flags);
				FUNC4(a, rq);
				FUNC7(&a->queue_lock, flags);
				FUNC5(a, rq);
				if (rq->req_stat != RS_PENDING)
					break;
			}
		}

		if (rq->req_stat == RS_SUCCESS
		    || ((rq->flags & RF_FAILURE_OK)
			&& rq->req_stat != RS_TIMEOUT))
			continue;

		FUNC1(ESAS2R_LOG_CRIT, "init message %x failed (%x, %x)",
			   a->init_msg, rq->req_stat, rq->flags);
		a->init_msg = ESAS2R_INIT_MSG_START;
		success = false;
		break;
	}

	FUNC2(rq, a);
	return success;
}