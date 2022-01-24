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
struct nvme_ctrl {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  NVME_CTRL_DELETING ; 
 int /*<<< orphan*/  FUNC0 (struct nvme_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_ctrl*) ; 

__attribute__((used)) static int FUNC4(struct nvme_ctrl *ctrl)
{
	int ret = 0;

	/*
	 * Keep a reference until nvme_do_delete_ctrl() complete,
	 * since ->delete_ctrl can free the controller.
	 */
	FUNC2(ctrl);
	if (!FUNC0(ctrl, NVME_CTRL_DELETING))
		ret = -EBUSY;
	if (!ret)
		FUNC1(ctrl);
	FUNC3(ctrl);
	return ret;
}