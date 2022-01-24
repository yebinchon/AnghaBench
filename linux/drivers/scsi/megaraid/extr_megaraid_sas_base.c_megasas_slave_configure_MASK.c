#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct scsi_device {scalar_t__ type; int channel; size_t id; TYPE_1__* host; } ;
struct megasas_instance {int /*<<< orphan*/  reset_mutex; scalar_t__ nvme_page_size; scalar_t__ tgt_prop; scalar_t__ pd_info; TYPE_2__* pd_list; scalar_t__ pd_list_not_supported; } ;
struct TYPE_4__ {scalar_t__ driveState; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 int DCMD_FAILED ; 
 int DCMD_SUCCESS ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*) ; 
 int MEGASAS_MAX_DEV_PER_CHANNEL ; 
 scalar_t__ MR_PD_STATE_SYSTEM ; 
 scalar_t__ TYPE_DISK ; 
 int /*<<< orphan*/  FUNC1 (struct megasas_instance*,struct scsi_device*) ; 
 int FUNC2 (struct megasas_instance*,struct scsi_device*) ; 
 struct megasas_instance* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct scsi_device *sdev)
{
	u16 pd_index = 0;
	struct megasas_instance *instance;
	int ret_target_prop = DCMD_FAILED;
	bool is_target_prop = false;

	instance = FUNC3(sdev->host->host_no);
	if (instance->pd_list_not_supported) {
		if (!FUNC0(sdev) && sdev->type == TYPE_DISK) {
			pd_index = (sdev->channel * MEGASAS_MAX_DEV_PER_CHANNEL) +
				sdev->id;
			if (instance->pd_list[pd_index].driveState !=
				MR_PD_STATE_SYSTEM)
				return -ENXIO;
		}
	}

	FUNC6(&instance->reset_mutex);
	/* Send DCMD to Firmware and cache the information */
	if ((instance->pd_info) && !FUNC0(sdev))
		FUNC1(instance, sdev);

	/* Some ventura firmware may not have instance->nvme_page_size set.
	 * Do not send MR_DCMD_DRV_GET_TARGET_PROP
	 */
	if ((instance->tgt_prop) && (instance->nvme_page_size))
		ret_target_prop = FUNC2(instance, sdev);

	is_target_prop = (ret_target_prop == DCMD_SUCCESS) ? true : false;
	FUNC5(sdev, is_target_prop);

	/* This sdev property may change post OCR */
	FUNC4(sdev, is_target_prop);

	FUNC7(&instance->reset_mutex);

	return 0;
}