#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct scsi_cmnd {int /*<<< orphan*/  request; scalar_t__ result; TYPE_1__* device; } ;
struct pqi_scsi_dev {int /*<<< orphan*/  scsi_cmds_outstanding; scalar_t__ aio_enabled; scalar_t__ raid_bypass_enabled; } ;
struct pqi_queue_group {int dummy; } ;
struct pqi_ctrl_info {struct pqi_queue_group* queue_groups; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct pqi_scsi_dev* hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_NO_CONNECT ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pqi_ctrl_info*,struct pqi_scsi_dev*,struct scsi_cmnd*,struct pqi_queue_group*) ; 
 scalar_t__ FUNC4 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct pqi_ctrl_info*) ; 
 scalar_t__ FUNC6 (struct pqi_ctrl_info*) ; 
 scalar_t__ FUNC7 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct pqi_ctrl_info*) ; 
 scalar_t__ FUNC9 (struct pqi_ctrl_info*,struct pqi_scsi_dev*) ; 
 scalar_t__ FUNC10 (struct pqi_scsi_dev*) ; 
 size_t FUNC11 (struct pqi_ctrl_info*,struct scsi_cmnd*) ; 
 scalar_t__ FUNC12 (struct pqi_scsi_dev*) ; 
 int FUNC13 (struct pqi_ctrl_info*,struct pqi_scsi_dev*,struct scsi_cmnd*,struct pqi_queue_group*) ; 
 int FUNC14 (struct pqi_ctrl_info*,struct pqi_scsi_dev*,struct scsi_cmnd*,struct pqi_queue_group*) ; 
 int /*<<< orphan*/  FUNC15 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC16 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 struct pqi_ctrl_info* FUNC17 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC18(struct Scsi_Host *shost,
	struct scsi_cmnd *scmd)
{
	int rc;
	struct pqi_ctrl_info *ctrl_info;
	struct pqi_scsi_dev *device;
	u16 hw_queue;
	struct pqi_queue_group *queue_group;
	bool raid_bypassed;

	device = scmd->device->hostdata;
	ctrl_info = FUNC17(shost);

	if (!device) {
		FUNC16(scmd, DID_NO_CONNECT);
		FUNC15(scmd);
		return 0;
	}

	FUNC1(&device->scsi_cmds_outstanding);

	if (FUNC7(ctrl_info) || FUNC9(ctrl_info,
								device)) {
		FUNC16(scmd, DID_NO_CONNECT);
		FUNC15(scmd);
		return 0;
	}

	FUNC5(ctrl_info);
	if (FUNC4(ctrl_info) || FUNC10(device) ||
	    FUNC6(ctrl_info)) {
		rc = SCSI_MLQUEUE_HOST_BUSY;
		goto out;
	}

	/*
	 * This is necessary because the SML doesn't zero out this field during
	 * error recovery.
	 */
	scmd->result = 0;

	hw_queue = FUNC11(ctrl_info, scmd);
	queue_group = &ctrl_info->queue_groups[hw_queue];

	if (FUNC12(device)) {
		raid_bypassed = false;
		if (device->raid_bypass_enabled &&
				!FUNC2(scmd->request)) {
			rc = FUNC13(ctrl_info, device,
				scmd, queue_group);
			if (rc == 0 || rc == SCSI_MLQUEUE_HOST_BUSY)
				raid_bypassed = true;
		}
		if (!raid_bypassed)
			rc = FUNC14(ctrl_info, device, scmd,
				queue_group);
	} else {
		if (device->aio_enabled)
			rc = FUNC3(ctrl_info, device, scmd,
				queue_group);
		else
			rc = FUNC14(ctrl_info, device, scmd,
				queue_group);
	}

out:
	FUNC8(ctrl_info);
	if (rc)
		FUNC0(&device->scsi_cmds_outstanding);

	return rc;
}