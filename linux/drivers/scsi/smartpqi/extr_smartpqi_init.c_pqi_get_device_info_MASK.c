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
typedef  int u8 ;
struct pqi_scsi_dev {int devtype; int volume_offline; int /*<<< orphan*/  lun; int /*<<< orphan*/  target; int /*<<< orphan*/  bus; int /*<<< orphan*/  unique_id; int /*<<< orphan*/  scsi3addr; int /*<<< orphan*/  volume_status; int /*<<< orphan*/  raid_level; scalar_t__ is_external_raid_device; int /*<<< orphan*/  model; int /*<<< orphan*/  vendor; scalar_t__ is_expander_smp_device; } ;
struct pqi_ctrl_info {TYPE_2__* scsi_host; TYPE_1__* pci_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_no; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CISS_LV_OK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PQI_CMD_STATUS_ABORTED ; 
 unsigned int PQI_INQUIRY_PAGE0_RETRIES ; 
 int /*<<< orphan*/  SA_RAID_UNKNOWN ; 
 int TYPE_DISK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC4 (struct pqi_ctrl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pqi_ctrl_info*,struct pqi_scsi_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pqi_ctrl_info*,struct pqi_scsi_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pqi_ctrl_info*,struct pqi_scsi_dev*) ; 
 scalar_t__ FUNC8 (struct pqi_scsi_dev*) ; 
 int FUNC9 (struct pqi_ctrl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int) ; 

__attribute__((used)) static int FUNC11(struct pqi_ctrl_info *ctrl_info,
	struct pqi_scsi_dev *device)
{
	int rc;
	u8 *buffer;
	unsigned int retries;

	if (device->is_expander_smp_device)
		return 0;

	buffer = FUNC2(64, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	/* Send an inquiry to the device to see what it is. */
	for (retries = 0;;) {
		rc = FUNC9(ctrl_info, device->scsi3addr, 0,
			buffer, 64);
		if (rc == 0)
			break;
		if (FUNC8(device) ||
			rc != PQI_CMD_STATUS_ABORTED ||
			++retries > PQI_INQUIRY_PAGE0_RETRIES)
			goto out;
	}

	FUNC10(&buffer[8], 8);
	FUNC10(&buffer[16], 16);

	device->devtype = buffer[0] & 0x1f;
	FUNC3(device->vendor, &buffer[8], sizeof(device->vendor));
	FUNC3(device->model, &buffer[16], sizeof(device->model));

	if (FUNC8(device) && device->devtype == TYPE_DISK) {
		if (device->is_external_raid_device) {
			device->raid_level = SA_RAID_UNKNOWN;
			device->volume_status = CISS_LV_OK;
			device->volume_offline = false;
		} else {
			FUNC6(ctrl_info, device);
			FUNC5(ctrl_info, device);
			FUNC7(ctrl_info, device);
		}
	}

	if (FUNC4(ctrl_info, device->scsi3addr,
		device->unique_id, sizeof(device->unique_id)) < 0)
		FUNC0(&ctrl_info->pci_dev->dev,
			"Can't get device id for scsi %d:%d:%d:%d\n",
			ctrl_info->scsi_host->host_no,
			device->bus, device->target,
			device->lun);

out:
	FUNC1(buffer);

	return rc;
}