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
typedef  int u32 ;
struct nvme_ctrl {int aen_result; int /*<<< orphan*/  device; int /*<<< orphan*/  ana_work; int /*<<< orphan*/  ana_log_buf; int /*<<< orphan*/  fw_act_work; int /*<<< orphan*/  events; } ;

/* Variables and functions */
#define  NVME_AER_NOTICE_ANA 131 
#define  NVME_AER_NOTICE_DISC_CHANGED 130 
#define  NVME_AER_NOTICE_FW_ACT_STARTING 129 
#define  NVME_AER_NOTICE_NS_CHANGED 128 
 int /*<<< orphan*/  NVME_CTRL_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  nvme_wq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_ctrl*,int) ; 

__attribute__((used)) static void FUNC6(struct nvme_ctrl *ctrl, u32 result)
{
	u32 aer_notice_type = (result & 0xff00) >> 8;

	FUNC5(ctrl, aer_notice_type);

	switch (aer_notice_type) {
	case NVME_AER_NOTICE_NS_CHANGED:
		FUNC4(NVME_AER_NOTICE_NS_CHANGED, &ctrl->events);
		FUNC2(ctrl);
		break;
	case NVME_AER_NOTICE_FW_ACT_STARTING:
		/*
		 * We are (ab)using the RESETTING state to prevent subsequent
		 * recovery actions from interfering with the controller's
		 * firmware activation.
		 */
		if (FUNC1(ctrl, NVME_CTRL_RESETTING))
			FUNC3(nvme_wq, &ctrl->fw_act_work);
		break;
#ifdef CONFIG_NVME_MULTIPATH
	case NVME_AER_NOTICE_ANA:
		if (!ctrl->ana_log_buf)
			break;
		queue_work(nvme_wq, &ctrl->ana_work);
		break;
#endif
	case NVME_AER_NOTICE_DISC_CHANGED:
		ctrl->aen_result = result;
		break;
	default:
		FUNC0(ctrl->device, "async event result %08x\n", result);
	}
}