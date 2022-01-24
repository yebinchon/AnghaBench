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
typedef  int /*<<< orphan*/  u32 ;
struct nvmet_ctrl {int /*<<< orphan*/  lock; int /*<<< orphan*/  csts; int /*<<< orphan*/  cc; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_CSTS_SHST_CMPLT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvmet_ctrl*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvmet_ctrl*) ; 

void FUNC6(struct nvmet_ctrl *ctrl, u32 new)
{
	u32 old;

	FUNC0(&ctrl->lock);
	old = ctrl->cc;
	ctrl->cc = new;

	if (FUNC2(new) && !FUNC2(old))
		FUNC5(ctrl);
	if (!FUNC2(new) && FUNC2(old))
		FUNC4(ctrl);
	if (FUNC3(new) && !FUNC3(old)) {
		FUNC4(ctrl);
		ctrl->csts |= NVME_CSTS_SHST_CMPLT;
	}
	if (!FUNC3(new) && FUNC3(old))
		ctrl->csts &= ~NVME_CSTS_SHST_CMPLT;
	FUNC1(&ctrl->lock);
}