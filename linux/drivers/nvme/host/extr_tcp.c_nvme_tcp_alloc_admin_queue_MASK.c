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
 int /*<<< orphan*/  NVME_AQ_DEPTH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvme_ctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_ctrl*) ; 

__attribute__((used)) static int FUNC4(struct nvme_ctrl *ctrl)
{
	int ret;

	ret = FUNC1(ctrl, 0, NVME_AQ_DEPTH);
	if (ret)
		return ret;

	ret = FUNC0(FUNC3(ctrl));
	if (ret)
		goto out_free_queue;

	return 0;

out_free_queue:
	FUNC2(ctrl, 0);
	return ret;
}