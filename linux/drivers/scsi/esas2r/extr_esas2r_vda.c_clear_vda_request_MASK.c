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
typedef  int /*<<< orphan*/  u32 ;
struct esas2r_request {int /*<<< orphan*/  req_list; TYPE_2__* data_buf; int /*<<< orphan*/  req_stat; TYPE_2__* vrq; } ;
struct TYPE_3__ {int /*<<< orphan*/  handle; } ;
struct TYPE_4__ {TYPE_1__ scsi; } ;

/* Variables and functions */
 int ESAS2R_DATA_BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RS_PENDING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct esas2r_request *rq)
{
	u32 handle = rq->vrq->scsi.handle;

	FUNC1(rq->vrq, 0, sizeof(*rq->vrq));

	rq->vrq->scsi.handle = handle;

	rq->req_stat = RS_PENDING;

	/* since the data buffer is separate clear that too */

	FUNC1(rq->data_buf, 0, ESAS2R_DATA_BUF_LEN);

	/*
	 * Setup next and prev pointer in case the request is not going through
	 * esas2r_start_request().
	 */

	FUNC0(&rq->req_list);
}