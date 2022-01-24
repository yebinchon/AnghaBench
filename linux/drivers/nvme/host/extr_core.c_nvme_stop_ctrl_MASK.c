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
struct nvme_ctrl {int /*<<< orphan*/  fw_act_work; int /*<<< orphan*/  async_event_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_ctrl*) ; 

void FUNC4(struct nvme_ctrl *ctrl)
{
	FUNC2(ctrl);
	FUNC3(ctrl);
	FUNC1(&ctrl->async_event_work);
	FUNC0(&ctrl->fw_act_work);
}