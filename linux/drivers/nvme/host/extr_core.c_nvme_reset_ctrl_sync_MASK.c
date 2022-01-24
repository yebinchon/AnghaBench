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
struct nvme_ctrl {scalar_t__ state; int /*<<< orphan*/  reset_work; } ;

/* Variables and functions */
 int ENETRESET ; 
 scalar_t__ NVME_CTRL_LIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nvme_ctrl*) ; 

int FUNC2(struct nvme_ctrl *ctrl)
{
	int ret;

	ret = FUNC1(ctrl);
	if (!ret) {
		FUNC0(&ctrl->reset_work);
		if (ctrl->state != NVME_CTRL_LIVE)
			ret = -ENETRESET;
	}

	return ret;
}