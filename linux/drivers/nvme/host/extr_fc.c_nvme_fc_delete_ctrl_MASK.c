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
struct nvme_fc_ctrl {int /*<<< orphan*/  connect_work; int /*<<< orphan*/  err_work; } ;
struct nvme_ctrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_fc_ctrl*) ; 
 struct nvme_fc_ctrl* FUNC3 (struct nvme_ctrl*) ; 

__attribute__((used)) static void
FUNC4(struct nvme_ctrl *nctrl)
{
	struct nvme_fc_ctrl *ctrl = FUNC3(nctrl);

	FUNC1(&ctrl->err_work);
	FUNC0(&ctrl->connect_work);
	/*
	 * kill the association on the link side.  this will block
	 * waiting for io to terminate
	 */
	FUNC2(ctrl);
}