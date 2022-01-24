#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct request {int cmd_flags; } ;
struct nvme_ctrl {scalar_t__ state; } ;
typedef  int /*<<< orphan*/  blk_status_t ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_OK ; 
 int /*<<< orphan*/  BLK_STS_RESOURCE ; 
 scalar_t__ NVME_CTRL_DEAD ; 
 scalar_t__ NVME_CTRL_DELETING ; 
 int /*<<< orphan*/  NVME_SC_HOST_PATH_ERROR ; 
 int REQ_NVME_MPATH ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 TYPE_1__* FUNC3 (struct request*) ; 

blk_status_t FUNC4(struct nvme_ctrl *ctrl,
		struct request *rq)
{
	if (ctrl->state != NVME_CTRL_DELETING &&
	    ctrl->state != NVME_CTRL_DEAD &&
	    !FUNC1(rq) && !(rq->cmd_flags & REQ_NVME_MPATH))
		return BLK_STS_RESOURCE;

	FUNC3(rq)->status = NVME_SC_HOST_PATH_ERROR;
	FUNC0(rq);
	FUNC2(rq);
	return BLK_STS_OK;
}