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
struct nvme_ctrl {int /*<<< orphan*/  admin_q; scalar_t__ admin_tagset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_cancel_request ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_ctrl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nvme_ctrl *ctrl,
		bool remove)
{
	FUNC0(ctrl->admin_q);
	FUNC5(ctrl, 0);
	if (ctrl->admin_tagset) {
		FUNC1(ctrl->admin_tagset,
			nvme_cancel_request, ctrl);
		FUNC2(ctrl->admin_tagset);
	}
	if (remove)
		FUNC3(ctrl->admin_q);
	FUNC4(ctrl, remove);
}