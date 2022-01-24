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
struct nvme_ctrl {scalar_t__ state; int /*<<< orphan*/  state_wq; } ;

/* Variables and functions */
 scalar_t__ NVME_CTRL_RESETTING ; 
 scalar_t__ FUNC0 (struct nvme_ctrl*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

bool FUNC3(struct nvme_ctrl *ctrl)
{
	FUNC2(ctrl->state_wq,
		   FUNC0(ctrl, NVME_CTRL_RESETTING) ||
		   FUNC1(ctrl));
	return ctrl->state == NVME_CTRL_RESETTING;
}