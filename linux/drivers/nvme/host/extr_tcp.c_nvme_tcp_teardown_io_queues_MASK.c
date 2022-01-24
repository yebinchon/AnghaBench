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
struct nvme_ctrl {int queue_count; scalar_t__ tagset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  nvme_cancel_request ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_ctrl*) ; 

__attribute__((used)) static void FUNC6(struct nvme_ctrl *ctrl,
		bool remove)
{
	if (ctrl->queue_count <= 1)
		return;
	FUNC3(ctrl);
	FUNC5(ctrl);
	if (ctrl->tagset) {
		FUNC0(ctrl->tagset,
			nvme_cancel_request, ctrl);
		FUNC1(ctrl->tagset);
	}
	if (remove)
		FUNC2(ctrl);
	FUNC4(ctrl, remove);
}