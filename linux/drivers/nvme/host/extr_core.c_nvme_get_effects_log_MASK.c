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
struct nvme_ctrl {int /*<<< orphan*/ * effects; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVME_LOG_CMD_EFFECTS ; 
 int /*<<< orphan*/  NVME_NSID_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nvme_ctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nvme_ctrl *ctrl)
{
	int ret;

	if (!ctrl->effects)
		ctrl->effects = FUNC1(sizeof(*ctrl->effects), GFP_KERNEL);

	if (!ctrl->effects)
		return 0;

	ret = FUNC2(ctrl, NVME_NSID_ALL, NVME_LOG_CMD_EFFECTS, 0,
			ctrl->effects, sizeof(*ctrl->effects), 0);
	if (ret) {
		FUNC0(ctrl->effects);
		ctrl->effects = NULL;
	}
	return ret;
}