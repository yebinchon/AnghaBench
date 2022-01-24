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
struct nvmet_ctrl {int kato; int /*<<< orphan*/  ka_work; int /*<<< orphan*/  csts; int /*<<< orphan*/  cc; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  NVME_CSTS_CFS ; 
 int /*<<< orphan*/  NVME_CSTS_RDY ; 
 scalar_t__ NVME_NVM_IOCQES ; 
 scalar_t__ NVME_NVM_IOSQES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_wq ; 

__attribute__((used)) static void FUNC7(struct nvmet_ctrl *ctrl)
{
	FUNC0(&ctrl->lock);

	if (FUNC5(ctrl->cc) != NVME_NVM_IOSQES ||
	    FUNC4(ctrl->cc) != NVME_NVM_IOCQES ||
	    FUNC6(ctrl->cc) != 0 ||
	    FUNC2(ctrl->cc) != 0 ||
	    FUNC3(ctrl->cc) != 0) {
		ctrl->csts = NVME_CSTS_CFS;
		return;
	}

	ctrl->csts = NVME_CSTS_RDY;

	/*
	 * Controllers that are not yet enabled should not really enforce the
	 * keep alive timeout, but we still want to track a timeout and cleanup
	 * in case a host died before it enabled the controller.  Hence, simply
	 * reset the keep alive timer when the controller is enabled.
	 */
	FUNC1(system_wq, &ctrl->ka_work, ctrl->kato * HZ);
}