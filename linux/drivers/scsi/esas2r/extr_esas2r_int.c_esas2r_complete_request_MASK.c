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
struct esas2r_request {scalar_t__ req_stat; int /*<<< orphan*/  (* comp_cb ) (struct esas2r_adapter*,struct esas2r_request*) ;TYPE_3__* vrq; int /*<<< orphan*/  (* interrupt_cb ) (struct esas2r_adapter*,struct esas2r_request*) ;} ;
struct esas2r_adapter {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {scalar_t__ function; } ;
struct TYPE_4__ {scalar_t__ sub_func; } ;
struct TYPE_6__ {TYPE_2__ scsi; TYPE_1__ flash; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_FLASHING ; 
 scalar_t__ RS_PENDING ; 
 scalar_t__ RS_SUCCESS ; 
 scalar_t__ VDA_FLASH_COMMIT ; 
 scalar_t__ VDA_FUNC_FLASH ; 
 scalar_t__ VDA_FUNC_SCSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*,struct esas2r_request*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct esas2r_adapter*,struct esas2r_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct esas2r_adapter*,struct esas2r_request*) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8(struct esas2r_adapter *a,
			     struct esas2r_request *rq)
{
	if (rq->vrq->scsi.function == VDA_FUNC_FLASH
	    && rq->vrq->flash.sub_func == VDA_FLASH_COMMIT)
		FUNC0(AF_FLASHING, &a->flags);

	/* See if we setup a callback to do special processing */

	if (rq->interrupt_cb) {
		(*rq->interrupt_cb)(a, rq);

		if (rq->req_stat == RS_PENDING) {
			FUNC3(a, rq);
			return;
		}
	}

	if (FUNC4(rq->vrq->scsi.function == VDA_FUNC_SCSI)
	    && FUNC7(rq->req_stat != RS_SUCCESS)) {
		FUNC1(a, rq);
		FUNC2(a, rq);
	}

	(*rq->comp_cb)(a, rq);
}