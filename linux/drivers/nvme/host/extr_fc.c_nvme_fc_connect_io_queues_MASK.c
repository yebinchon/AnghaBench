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
typedef  int u16 ;
struct TYPE_3__ {int queue_count; } ;
struct nvme_fc_ctrl {TYPE_2__* queues; TYPE_1__ ctrl; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_FC_Q_LIVE ; 
 int FUNC0 (struct nvme_fc_ctrl*,TYPE_2__*,int,int) ; 
 int FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct nvme_fc_ctrl *ctrl, u16 qsize)
{
	int i, ret = 0;

	for (i = 1; i < ctrl->ctrl.queue_count; i++) {
		ret = FUNC0(ctrl, &ctrl->queues[i], qsize,
					(qsize / 5));
		if (ret)
			break;
		ret = FUNC1(&ctrl->ctrl, i, false);
		if (ret)
			break;

		FUNC2(NVME_FC_Q_LIVE, &ctrl->queues[i].flags);
	}

	return ret;
}