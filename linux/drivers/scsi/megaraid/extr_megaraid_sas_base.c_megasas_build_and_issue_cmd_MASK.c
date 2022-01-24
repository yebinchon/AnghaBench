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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {char* ptr; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct megasas_instance {int /*<<< orphan*/  reg_set; TYPE_2__* instancet; int /*<<< orphan*/  fw_outstanding; } ;
struct megasas_cmd {scalar_t__ frame_count; int /*<<< orphan*/  frame_phys_addr; struct scsi_cmnd* scmd; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* fire_cmd ) (struct megasas_instance*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ READ_WRITE_LDIO ; 
 int /*<<< orphan*/  SCSI_MLQUEUE_HOST_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct megasas_instance*,struct scsi_cmnd*,struct megasas_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct megasas_instance*,struct scsi_cmnd*,struct megasas_cmd*) ; 
 scalar_t__ FUNC3 (struct scsi_cmnd*) ; 
 struct megasas_cmd* FUNC4 (struct megasas_instance*) ; 
 int /*<<< orphan*/  FUNC5 (struct megasas_instance*,struct megasas_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct megasas_instance*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

u32
FUNC7(struct megasas_instance *instance,
			    struct scsi_cmnd *scmd)
{
	struct megasas_cmd *cmd;
	u32 frame_count;

	cmd = FUNC4(instance);
	if (!cmd)
		return SCSI_MLQUEUE_HOST_BUSY;

	/*
	 * Logical drive command
	 */
	if (FUNC3(scmd) == READ_WRITE_LDIO)
		frame_count = FUNC2(instance, scmd, cmd);
	else
		frame_count = FUNC1(instance, scmd, cmd);

	if (!frame_count)
		goto out_return_cmd;

	cmd->scmd = scmd;
	scmd->SCp.ptr = (char *)cmd;

	/*
	 * Issue the command to the FW
	 */
	FUNC0(&instance->fw_outstanding);

	instance->instancet->fire_cmd(instance, cmd->frame_phys_addr,
				cmd->frame_count-1, instance->reg_set);

	return 0;
out_return_cmd:
	FUNC5(instance, cmd);
	return SCSI_MLQUEUE_HOST_BUSY;
}