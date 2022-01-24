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
typedef  int u32 ;
struct nvme_ctrl {int /*<<< orphan*/  scan_lock; TYPE_1__* subsys; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int NVME_CMD_EFFECTS_CCC ; 
 int NVME_CMD_EFFECTS_CSE_MASK ; 
 int NVME_CMD_EFFECTS_LBCC ; 
 int NVME_CMD_EFFECTS_NCC ; 
 int NVME_CMD_EFFECTS_NIC ; 
 int /*<<< orphan*/  NVME_NSID_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_ctrl*) ; 

__attribute__((used)) static void FUNC7(struct nvme_ctrl *ctrl, u32 effects)
{
	/*
	 * Revalidate LBA changes prior to unfreezing. This is necessary to
	 * prevent memory corruption if a logical block size was changed by
	 * this command.
	 */
	if (effects & NVME_CMD_EFFECTS_LBCC)
		FUNC6(ctrl);
	if (effects & (NVME_CMD_EFFECTS_LBCC | NVME_CMD_EFFECTS_CSE_MASK)) {
		FUNC5(ctrl);
		FUNC2(ctrl->subsys);
		FUNC0(&ctrl->subsys->lock);
		FUNC4(ctrl, NVME_NSID_ALL);
		FUNC0(&ctrl->scan_lock);
	}
	if (effects & NVME_CMD_EFFECTS_CCC)
		FUNC1(ctrl);
	if (effects & (NVME_CMD_EFFECTS_NIC | NVME_CMD_EFFECTS_NCC))
		FUNC3(ctrl);
}