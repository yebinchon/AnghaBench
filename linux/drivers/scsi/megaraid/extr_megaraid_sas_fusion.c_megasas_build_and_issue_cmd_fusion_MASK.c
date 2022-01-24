#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  SMID; } ;
union MEGASAS_REQUEST_DESCRIPTOR_UNION {TYPE_2__ SCSIIO; scalar_t__ Words; } ;
typedef  scalar_t__ u32 ;
struct scsi_cmnd {TYPE_5__* request; } ;
struct megasas_instance {scalar_t__ ldio_threshold; scalar_t__ max_fw_cmds; TYPE_3__* pdev; int /*<<< orphan*/  fw_outstanding; TYPE_1__* host; int /*<<< orphan*/  ldio_outstanding; } ;
struct megasas_cmd_fusion {scalar_t__ r1_alt_dev_handle; union MEGASAS_REQUEST_DESCRIPTOR_UNION* request_desc; TYPE_4__* io_request; scalar_t__ index; } ;
struct TYPE_10__ {scalar_t__ tag; } ;
struct TYPE_9__ {int ChainOffset; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {scalar_t__ can_queue; } ;

/* Variables and functions */
 scalar_t__ MR_DEVHANDLE_INVALID ; 
 scalar_t__ READ_WRITE_LDIO ; 
 scalar_t__ SCSI_MLQUEUE_DEVICE_BUSY ; 
 scalar_t__ SCSI_MLQUEUE_HOST_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC4 (struct megasas_instance*,struct scsi_cmnd*,struct megasas_cmd_fusion*) ; 
 scalar_t__ FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct megasas_instance*,union MEGASAS_REQUEST_DESCRIPTOR_UNION*) ; 
 struct megasas_cmd_fusion* FUNC7 (struct megasas_instance*,scalar_t__) ; 
 union MEGASAS_REQUEST_DESCRIPTOR_UNION* FUNC8 (struct megasas_instance*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct megasas_instance*,struct megasas_cmd_fusion*,struct megasas_cmd_fusion*) ; 
 int /*<<< orphan*/  FUNC10 (struct megasas_instance*,struct megasas_cmd_fusion*) ; 

__attribute__((used)) static u32
FUNC11(struct megasas_instance *instance,
				   struct scsi_cmnd *scmd)
{
	struct megasas_cmd_fusion *cmd, *r1_cmd = NULL;
	union MEGASAS_REQUEST_DESCRIPTOR_UNION *req_desc;
	u32 index;

	if ((FUNC5(scmd) == READ_WRITE_LDIO) &&
		instance->ldio_threshold &&
		(FUNC1(&instance->ldio_outstanding) >
		instance->ldio_threshold)) {
		FUNC0(&instance->ldio_outstanding);
		return SCSI_MLQUEUE_DEVICE_BUSY;
	}

	if (FUNC1(&instance->fw_outstanding) >
			instance->host->can_queue) {
		FUNC0(&instance->fw_outstanding);
		return SCSI_MLQUEUE_HOST_BUSY;
	}

	cmd = FUNC7(instance, scmd->request->tag);

	if (!cmd) {
		FUNC0(&instance->fw_outstanding);
		return SCSI_MLQUEUE_HOST_BUSY;
	}

	index = cmd->index;

	req_desc = FUNC8(instance, index-1);

	req_desc->Words = 0;
	cmd->request_desc = req_desc;

	if (FUNC4(instance, scmd, cmd)) {
		FUNC10(instance, cmd);
		FUNC3(&instance->pdev->dev, "Error building command\n");
		cmd->request_desc = NULL;
		FUNC0(&instance->fw_outstanding);
		return SCSI_MLQUEUE_HOST_BUSY;
	}

	req_desc = cmd->request_desc;
	req_desc->SCSIIO.SMID = FUNC2(index);

	if (cmd->io_request->ChainOffset != 0 &&
	    cmd->io_request->ChainOffset != 0xF)
		FUNC3(&instance->pdev->dev, "The chain offset value is not "
		       "correct : %x\n", cmd->io_request->ChainOffset);
	/*
	 *	if it is raid 1/10 fp write capable.
	 *	try to get second command from pool and construct it.
	 *	From FW, it has confirmed that lba values of two PDs
	 *	corresponds to single R1/10 LD are always same
	 *
	 */
	/*	driver side count always should be less than max_fw_cmds
	 *	to get new command
	 */
	if (cmd->r1_alt_dev_handle != MR_DEVHANDLE_INVALID) {
		r1_cmd = FUNC7(instance,
				(scmd->request->tag + instance->max_fw_cmds));
		FUNC9(instance, cmd, r1_cmd);
	}


	/*
	 * Issue the command to the FW
	 */

	FUNC6(instance, req_desc);

	if (r1_cmd)
		FUNC6(instance, r1_cmd->request_desc);


	return 0;
}