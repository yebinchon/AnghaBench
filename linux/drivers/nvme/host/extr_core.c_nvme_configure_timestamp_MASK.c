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
typedef  int /*<<< orphan*/  ts ;
struct nvme_ctrl {int oncs; int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int NVME_CTRL_ONCS_TIMESTAMP ; 
 int /*<<< orphan*/  NVME_FEAT_TIMESTAMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nvme_ctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct nvme_ctrl *ctrl)
{
	__le64 ts;
	int ret;

	if (!(ctrl->oncs & NVME_CTRL_ONCS_TIMESTAMP))
		return 0;

	ts = FUNC0(FUNC3(FUNC2()));
	ret = FUNC4(ctrl, NVME_FEAT_TIMESTAMP, 0, &ts, sizeof(ts),
			NULL);
	if (ret)
		FUNC1(ctrl->device,
			"could not set timestamp (%d)\n", ret);
	return ret;
}