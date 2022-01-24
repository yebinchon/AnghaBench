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
struct TYPE_4__ {int queue_count; } ;
struct nvme_loop_ctrl {TYPE_1__* queues; TYPE_2__ ctrl; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_LOOP_Q_LIVE ; 
 int FUNC0 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct nvme_loop_ctrl *ctrl)
{
	int i, ret;

	for (i = 1; i < ctrl->ctrl.queue_count; i++) {
		ret = FUNC0(&ctrl->ctrl, i, false);
		if (ret)
			return ret;
		FUNC1(NVME_LOOP_Q_LIVE, &ctrl->queues[i].flags);
	}

	return 0;
}