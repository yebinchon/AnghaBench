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
typedef  int u32 ;
struct nvme_ctrl {unsigned long shutdown_timeout; int /*<<< orphan*/  device; TYPE_1__* ops; int /*<<< orphan*/  ctrl_config; } ;
struct TYPE_2__ {int (* reg_write32 ) (struct nvme_ctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int (* reg_read32 ) (struct nvme_ctrl*,int /*<<< orphan*/ ,int*) ;} ;

/* Variables and functions */
 int EINTR ; 
 int ENODEV ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  NVME_CC_SHN_MASK ; 
 int /*<<< orphan*/  NVME_CC_SHN_NORMAL ; 
 int NVME_CSTS_SHST_CMPLT ; 
 int NVME_CSTS_SHST_MASK ; 
 int /*<<< orphan*/  NVME_REG_CC ; 
 int /*<<< orphan*/  NVME_REG_CSTS ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct nvme_ctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nvme_ctrl*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

int FUNC6(struct nvme_ctrl *ctrl)
{
	unsigned long timeout = jiffies + (ctrl->shutdown_timeout * HZ);
	u32 csts;
	int ret;

	ctrl->ctrl_config &= ~NVME_CC_SHN_MASK;
	ctrl->ctrl_config |= NVME_CC_SHN_NORMAL;

	ret = ctrl->ops->reg_write32(ctrl, NVME_REG_CC, ctrl->ctrl_config);
	if (ret)
		return ret;

	while ((ret = ctrl->ops->reg_read32(ctrl, NVME_REG_CSTS, &csts)) == 0) {
		if ((csts & NVME_CSTS_SHST_MASK) == NVME_CSTS_SHST_CMPLT)
			break;

		FUNC2(100);
		if (FUNC1(current))
			return -EINTR;
		if (FUNC5(jiffies, timeout)) {
			FUNC0(ctrl->device,
				"Device shutdown incomplete; abort shutdown\n");
			return -ENODEV;
		}
	}

	return ret;
}