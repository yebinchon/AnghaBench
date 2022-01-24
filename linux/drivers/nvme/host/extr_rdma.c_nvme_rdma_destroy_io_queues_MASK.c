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
struct TYPE_2__ {int /*<<< orphan*/  tagset; int /*<<< orphan*/  connect_q; } ;
struct nvme_rdma_ctrl {TYPE_1__ ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_rdma_ctrl*) ; 

__attribute__((used)) static void FUNC3(struct nvme_rdma_ctrl *ctrl,
		bool remove)
{
	if (remove) {
		FUNC0(ctrl->ctrl.connect_q);
		FUNC1(ctrl->ctrl.tagset);
	}
	FUNC2(ctrl);
}