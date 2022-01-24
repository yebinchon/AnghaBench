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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct nvme_ctrl {int /*<<< orphan*/  device; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* reg_read32 ) (struct nvme_ctrl*,int /*<<< orphan*/ ,int*) ;} ;

/* Variables and functions */
 int EINTR ; 
 int ENODEV ; 
 int HZ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int NVME_CSTS_RDY ; 
 int /*<<< orphan*/  NVME_REG_CSTS ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct nvme_ctrl*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (int,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct nvme_ctrl *ctrl, u64 cap, bool enabled)
{
	unsigned long timeout =
		((FUNC0(cap) + 1) * HZ / 2) + jiffies;
	u32 csts, bit = enabled ? NVME_CSTS_RDY : 0;
	int ret;

	while ((ret = ctrl->ops->reg_read32(ctrl, NVME_REG_CSTS, &csts)) == 0) {
		if (csts == ~0)
			return -ENODEV;
		if ((csts & NVME_CSTS_RDY) == bit)
			break;

		FUNC3(100);
		if (FUNC2(current))
			return -EINTR;
		if (FUNC5(jiffies, timeout)) {
			FUNC1(ctrl->device,
				"Device not ready; aborting %s\n", enabled ?
						"initialisation" : "reset");
			return -ENODEV;
		}
	}

	return ret;
}