#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  lun; int /*<<< orphan*/  target_id; } ;
struct TYPE_9__ {TYPE_3__ csmi; } ;
struct TYPE_10__ {TYPE_4__ ioctl_rsp; } ;
struct esas2r_request {int /*<<< orphan*/  (* aux_req_cb ) (struct esas2r_adapter*,struct esas2r_request*) ;TYPE_5__ func_rsp; TYPE_2__* vrq; int /*<<< orphan*/  target_id; } ;
struct esas2r_adapter {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {TYPE_1__ scsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*,struct esas2r_request*) ; 

__attribute__((used)) static void FUNC3(struct esas2r_adapter *a,
					     struct esas2r_request *rq)
{
	rq->target_id = FUNC1(rq->func_rsp.ioctl_rsp.csmi.target_id);
	rq->vrq->scsi.flags |= FUNC0(rq->func_rsp.ioctl_rsp.csmi.lun);

	/* Now call the original completion callback. */
	(*rq->aux_req_cb)(a, rq);
}