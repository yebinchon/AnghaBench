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
union nvme_result {int /*<<< orphan*/  u32; } ;
typedef  int u32 ;
struct nvme_ctrl {int aen_result; int /*<<< orphan*/  async_event_work; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
#define  NVME_AER_CSS 132 
#define  NVME_AER_ERROR 131 
#define  NVME_AER_NOTICE 130 
#define  NVME_AER_SMART 129 
#define  NVME_AER_VS 128 
 int NVME_SC_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_ctrl*,int) ; 
 int /*<<< orphan*/  nvme_wq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_ctrl*,int) ; 

void FUNC5(struct nvme_ctrl *ctrl, __le16 status,
		volatile union nvme_result *res)
{
	u32 result = FUNC1(res->u32);
	u32 aer_type = result & 0x07;

	if (FUNC0(status) >> 1 != NVME_SC_SUCCESS)
		return;

	switch (aer_type) {
	case NVME_AER_NOTICE:
		FUNC2(ctrl, result);
		break;
	case NVME_AER_ERROR:
	case NVME_AER_SMART:
	case NVME_AER_CSS:
	case NVME_AER_VS:
		FUNC4(ctrl, aer_type);
		ctrl->aen_result = result;
		break;
	default:
		break;
	}
	FUNC3(nvme_wq, &ctrl->async_event_work);
}