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
typedef  int u32 ;
struct esas2r_request {int /*<<< orphan*/  comp_list; int /*<<< orphan*/  func_rsp; TYPE_3__* vrq; struct esas2r_request* req_stat; int /*<<< orphan*/  req_list; } ;
struct TYPE_4__ {scalar_t__ virt_addr; } ;
struct esas2r_adapter {int last_read; int list_size; int /*<<< orphan*/  queue_lock; struct esas2r_request** req_table; TYPE_1__ outbound_list_md; int /*<<< orphan*/ * outbound_copy; } ;
struct atto_vda_ob_rsp {int handle; int /*<<< orphan*/  func_rsp; struct esas2r_request* req_stat; } ;
struct TYPE_5__ {int handle; scalar_t__ function; } ;
struct TYPE_6__ {TYPE_2__ scsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int) ; 
 int MU_OLC_WRT_PTR ; 
 scalar_t__ VDA_FUNC_SCSI ; 
 int /*<<< orphan*/  comp_list ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct esas2r_adapter*,struct esas2r_request*,struct atto_vda_ob_rsp*) ; 
 int /*<<< orphan*/  FUNC5 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 size_t num_ae_requests ; 
 size_t num_requests ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static void FUNC17(struct esas2r_adapter *a)
{
	struct atto_vda_ob_rsp *rsp;
	u32 rspput_ptr;
	u32 rspget_ptr;
	struct esas2r_request *rq;
	u32 handle;
	unsigned long flags;

	FUNC0(comp_list);

	FUNC7();

	FUNC14(&a->queue_lock, flags);

	/* Get the outbound limit and pointers */
	rspput_ptr = FUNC9(*a->outbound_copy) & MU_OLC_WRT_PTR;
	rspget_ptr = a->last_read;

	FUNC6("rspput_ptr: %x, rspget_ptr: %x", rspput_ptr, rspget_ptr);

	/* If we don't have anything to process, get out */
	if (FUNC16(rspget_ptr == rspput_ptr)) {
		FUNC15(&a->queue_lock, flags);
		FUNC8();
		return;
	}

	/* Make sure the firmware is healthy */
	if (FUNC16(rspput_ptr >= a->list_size)) {
		FUNC15(&a->queue_lock, flags);
		FUNC2();
		FUNC5(a);
		FUNC8();
		return;
	}

	do {
		rspget_ptr++;

		if (rspget_ptr >= a->list_size)
			rspget_ptr = 0;

		rsp = (struct atto_vda_ob_rsp *)a->outbound_list_md.virt_addr
		      + rspget_ptr;

		handle = rsp->handle;

		/* Verify the handle range */
		if (FUNC16(FUNC1(handle) == 0
			     || FUNC1(handle) > num_requests +
			     num_ae_requests + 1)) {
			FUNC2();
			continue;
		}

		/* Get the request for this handle */
		rq = a->req_table[FUNC1(handle)];

		if (FUNC16(rq == NULL || rq->vrq->scsi.handle != handle)) {
			FUNC2();
			continue;
		}

		FUNC12(&rq->req_list);

		/* Get the completion status */
		rq->req_stat = rsp->req_stat;

		FUNC6("handle: %x", handle);
		FUNC6("rq: %p", rq);
		FUNC6("req_status: %x", rq->req_stat);

		if (FUNC10(rq->vrq->scsi.function == VDA_FUNC_SCSI)) {
			FUNC4(a, rq, rsp);
		} else {
			/*
			 * Copy the outbound completion struct for non-I/O
			 * requests.
			 */
			FUNC13(&rq->func_rsp, &rsp->func_rsp,
			       sizeof(rsp->func_rsp));
		}

		/* Queue the request for completion. */
		FUNC11(&rq->comp_list, &comp_list);

	} while (rspget_ptr != rspput_ptr);

	a->last_read = rspget_ptr;
	FUNC15(&a->queue_lock, flags);

	FUNC3(a, &comp_list);
	FUNC8();
}