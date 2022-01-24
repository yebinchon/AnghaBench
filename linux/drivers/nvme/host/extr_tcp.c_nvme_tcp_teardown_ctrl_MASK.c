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
struct nvme_ctrl {int /*<<< orphan*/  admin_q; } ;
struct TYPE_2__ {int /*<<< orphan*/  connect_work; int /*<<< orphan*/  err_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_ctrl*,int) ; 
 TYPE_1__* FUNC7 (struct nvme_ctrl*) ; 

__attribute__((used)) static void FUNC8(struct nvme_ctrl *ctrl, bool shutdown)
{
	FUNC2(&FUNC7(ctrl)->err_work);
	FUNC1(&FUNC7(ctrl)->connect_work);

	FUNC6(ctrl, shutdown);
	FUNC0(ctrl->admin_q);
	if (shutdown)
		FUNC4(ctrl);
	else
		FUNC3(ctrl);
	FUNC5(ctrl, shutdown);
}