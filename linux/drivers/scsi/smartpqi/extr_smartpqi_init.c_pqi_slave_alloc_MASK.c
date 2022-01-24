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
struct scsi_target {int dummy; } ;
struct scsi_device {int allow_restart; struct pqi_scsi_dev* hostdata; int /*<<< orphan*/  lun; int /*<<< orphan*/  host; } ;
struct sas_rphy {int dummy; } ;
struct pqi_scsi_dev {int target_lun_valid; scalar_t__ advertised_queue_depth; scalar_t__ queue_depth; struct scsi_device* sdev; int /*<<< orphan*/  lun; int /*<<< orphan*/  target; } ;
struct pqi_ctrl_info {int /*<<< orphan*/  scsi_device_list_lock; } ;

/* Variables and functions */
 scalar_t__ PQI_PHYSICAL_DEVICE_BUS ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*) ; 
 struct pqi_scsi_dev* FUNC1 (struct pqi_ctrl_info*,struct sas_rphy*) ; 
 struct pqi_scsi_dev* FUNC2 (struct pqi_ctrl_info*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pqi_scsi_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*,scalar_t__) ; 
 struct scsi_target* FUNC5 (struct scsi_device*) ; 
 scalar_t__ FUNC6 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_device*) ; 
 struct pqi_ctrl_info* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sas_rphy* FUNC11 (struct scsi_target*) ; 

__attribute__((used)) static int FUNC12(struct scsi_device *sdev)
{
	struct pqi_scsi_dev *device;
	unsigned long flags;
	struct pqi_ctrl_info *ctrl_info;
	struct scsi_target *starget;
	struct sas_rphy *rphy;

	ctrl_info = FUNC8(sdev->host);

	FUNC9(&ctrl_info->scsi_device_list_lock, flags);

	if (FUNC6(sdev) == PQI_PHYSICAL_DEVICE_BUS) {
		starget = FUNC5(sdev);
		rphy = FUNC11(starget);
		device = FUNC1(ctrl_info, rphy);
		if (device) {
			device->target = FUNC7(sdev);
			device->lun = sdev->lun;
			device->target_lun_valid = true;
		}
	} else {
		device = FUNC2(ctrl_info, FUNC6(sdev),
			FUNC7(sdev), sdev->lun);
	}

	if (device) {
		sdev->hostdata = device;
		device->sdev = sdev;
		if (device->queue_depth) {
			device->advertised_queue_depth = device->queue_depth;
			FUNC4(sdev,
				device->advertised_queue_depth);
		}
		if (FUNC3(device))
			FUNC0(sdev);
		else
			sdev->allow_restart = 1;
	}

	FUNC10(&ctrl_info->scsi_device_list_lock, flags);

	return 0;
}