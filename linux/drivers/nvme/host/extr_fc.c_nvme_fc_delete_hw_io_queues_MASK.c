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
struct nvme_fc_queue {int dummy; } ;
struct TYPE_2__ {int queue_count; } ;
struct nvme_fc_ctrl {TYPE_1__ ctrl; struct nvme_fc_queue* queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvme_fc_ctrl*,struct nvme_fc_queue*,int) ; 

__attribute__((used)) static void
FUNC1(struct nvme_fc_ctrl *ctrl)
{
	struct nvme_fc_queue *queue = &ctrl->queues[ctrl->ctrl.queue_count - 1];
	int i;

	for (i = ctrl->ctrl.queue_count - 1; i >= 1; i--, queue--)
		FUNC0(ctrl, queue, i);
}