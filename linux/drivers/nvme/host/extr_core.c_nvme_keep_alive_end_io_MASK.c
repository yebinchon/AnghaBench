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
struct request {struct nvme_ctrl* end_io_data; } ;
struct nvme_ctrl {int comp_seen; scalar_t__ state; int kato; int /*<<< orphan*/  ka_work; int /*<<< orphan*/  lock; int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ NVME_CTRL_CONNECTING ; 
 scalar_t__ NVME_CTRL_LIVE ; 
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct request *rq, blk_status_t status)
{
	struct nvme_ctrl *ctrl = rq->end_io_data;
	unsigned long flags;
	bool startka = false;

	FUNC0(rq);

	if (status) {
		FUNC1(ctrl->device,
			"failed nvme_keep_alive_end_io error=%d\n",
				status);
		return;
	}

	ctrl->comp_seen = false;
	FUNC3(&ctrl->lock, flags);
	if (ctrl->state == NVME_CTRL_LIVE ||
	    ctrl->state == NVME_CTRL_CONNECTING)
		startka = true;
	FUNC4(&ctrl->lock, flags);
	if (startka)
		FUNC2(&ctrl->ka_work, ctrl->kato * HZ);
}