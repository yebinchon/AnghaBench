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
struct nvme_ctrl {int oaes; int /*<<< orphan*/  async_event_work; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int NVME_AEN_SUPPORTED ; 
 int /*<<< orphan*/  NVME_FEAT_ASYNC_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct nvme_ctrl*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  nvme_wq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nvme_ctrl *ctrl)
{
	u32 result, supported_aens = ctrl->oaes & NVME_AEN_SUPPORTED;
	int status;

	if (!supported_aens)
		return;

	status = FUNC1(ctrl, NVME_FEAT_ASYNC_EVENT, supported_aens,
			NULL, 0, &result);
	if (status)
		FUNC0(ctrl->device, "Failed to configure AEN (cfg %x)\n",
			 supported_aens);

	FUNC2(nvme_wq, &ctrl->async_event_work);
}