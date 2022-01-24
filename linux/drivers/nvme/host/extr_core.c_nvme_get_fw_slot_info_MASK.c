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
struct nvme_fw_slot_info_log {int dummy; } ;
struct nvme_ctrl {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVME_LOG_FW_SLOT ; 
 int /*<<< orphan*/  NVME_NSID_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_fw_slot_info_log*) ; 
 struct nvme_fw_slot_info_log* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nvme_ctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nvme_fw_slot_info_log*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct nvme_ctrl *ctrl)
{
	struct nvme_fw_slot_info_log *log;

	log = FUNC2(sizeof(*log), GFP_KERNEL);
	if (!log)
		return;

	if (FUNC3(ctrl, NVME_NSID_ALL, 0, NVME_LOG_FW_SLOT, log,
			sizeof(*log), 0))
		FUNC0(ctrl->device, "Get FW SLOT INFO log error\n");
	FUNC1(log);
}