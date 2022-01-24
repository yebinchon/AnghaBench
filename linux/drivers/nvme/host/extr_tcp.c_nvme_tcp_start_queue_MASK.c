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
struct nvme_tcp_ctrl {TYPE_1__* queues; } ;
struct nvme_ctrl {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_TCP_Q_ALLOCATED ; 
 int /*<<< orphan*/  NVME_TCP_Q_LIVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (struct nvme_ctrl*) ; 
 int FUNC3 (struct nvme_ctrl*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nvme_tcp_ctrl* FUNC6 (struct nvme_ctrl*) ; 

__attribute__((used)) static int FUNC7(struct nvme_ctrl *nctrl, int idx)
{
	struct nvme_tcp_ctrl *ctrl = FUNC6(nctrl);
	int ret;

	if (idx)
		ret = FUNC3(nctrl, idx, false);
	else
		ret = FUNC2(nctrl);

	if (!ret) {
		FUNC4(NVME_TCP_Q_LIVE, &ctrl->queues[idx].flags);
	} else {
		if (FUNC5(NVME_TCP_Q_ALLOCATED, &ctrl->queues[idx].flags))
			FUNC0(&ctrl->queues[idx]);
		FUNC1(nctrl->device,
			"failed to connect queue: %d ret=%d\n", idx, ret);
	}
	return ret;
}