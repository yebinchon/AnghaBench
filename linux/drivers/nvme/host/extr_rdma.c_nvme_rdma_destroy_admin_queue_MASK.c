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
struct TYPE_6__ {int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {int /*<<< orphan*/  admin_tagset; int /*<<< orphan*/  fabrics_q; int /*<<< orphan*/  admin_q; } ;
struct nvme_rdma_ctrl {int /*<<< orphan*/ * queues; TYPE_3__ async_event_sqe; TYPE_1__* device; TYPE_2__ ctrl; } ;
struct nvme_command {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct nvme_rdma_ctrl *ctrl,
		bool remove)
{
	if (remove) {
		FUNC0(ctrl->ctrl.admin_q);
		FUNC0(ctrl->ctrl.fabrics_q);
		FUNC1(ctrl->ctrl.admin_tagset);
	}
	if (ctrl->async_event_sqe.data) {
		FUNC2(ctrl->device->dev, &ctrl->async_event_sqe,
				sizeof(struct nvme_command), DMA_TO_DEVICE);
		ctrl->async_event_sqe.data = NULL;
	}
	FUNC3(&ctrl->queues[0]);
}