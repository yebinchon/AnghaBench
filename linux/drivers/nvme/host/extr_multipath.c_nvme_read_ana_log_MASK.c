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
typedef  scalar_t__ u32 ;
struct nvme_ctrl {int anatt; int /*<<< orphan*/  ana_lock; int /*<<< orphan*/  anatt_timer; int /*<<< orphan*/  device; int /*<<< orphan*/  ana_log_size; int /*<<< orphan*/  ana_log_buf; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  NVME_LOG_ANA ; 
 int /*<<< orphan*/  NVME_NSID_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct nvme_ctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nvme_ctrl*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_update_ana_state ; 

__attribute__((used)) static int FUNC7(struct nvme_ctrl *ctrl)
{
	u32 nr_change_groups = 0;
	int error;

	FUNC3(&ctrl->ana_lock);
	error = FUNC5(ctrl, NVME_NSID_ALL, NVME_LOG_ANA, 0,
			ctrl->ana_log_buf, ctrl->ana_log_size, 0);
	if (error) {
		FUNC1(ctrl->device, "Failed to get ANA log: %d\n", error);
		goto out_unlock;
	}

	error = FUNC6(ctrl, &nr_change_groups,
			nvme_update_ana_state);
	if (error)
		goto out_unlock;

	/*
	 * In theory we should have an ANATT timer per group as they might enter
	 * the change state at different times.  But that is a lot of overhead
	 * just to protect against a target that keeps entering new changes
	 * states while never finishing previous ones.  But we'll still
	 * eventually time out once all groups are in change state, so this
	 * isn't a big deal.
	 *
	 * We also double the ANATT value to provide some slack for transports
	 * or AEN processing overhead.
	 */
	if (nr_change_groups)
		FUNC2(&ctrl->anatt_timer, ctrl->anatt * HZ * 2 + jiffies);
	else
		FUNC0(&ctrl->anatt_timer);
out_unlock:
	FUNC4(&ctrl->ana_lock);
	return error;
}