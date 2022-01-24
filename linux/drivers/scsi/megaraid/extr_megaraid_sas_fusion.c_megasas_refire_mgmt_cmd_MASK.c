#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union MEGASAS_REQUEST_DESCRIPTOR_UNION {int dummy; } MEGASAS_REQUEST_DESCRIPTOR_UNION ;
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct megasas_instance {int max_scsi_cmds; int max_fw_cmds; int /*<<< orphan*/  support_pci_lane_margining; int /*<<< orphan*/  support_nvme_passthru; struct megasas_cmd** cmd_list; struct fusion_context* ctrl_context; } ;
struct megasas_cmd_fusion {size_t sync_cmd_idx; } ;
struct TYPE_5__ {int /*<<< orphan*/  smid; } ;
struct megasas_cmd {int flags; TYPE_4__* frame; TYPE_1__ context; } ;
struct fusion_context {struct megasas_cmd_fusion** cmd_list; } ;
struct TYPE_7__ {int cmd; void* cmd_status; } ;
struct TYPE_6__ {int /*<<< orphan*/  cmd_status; int /*<<< orphan*/  opcode; } ;
struct TYPE_8__ {TYPE_3__ hdr; TYPE_2__ dcmd; } ;

/* Variables and functions */
#define  COMPLETE_CMD 133 
 int /*<<< orphan*/  DID_OK ; 
 int DRV_DCMD_SKIP_REFIRE ; 
#define  MFI_CMD_DCMD 132 
#define  MFI_CMD_NVME 131 
#define  MFI_CMD_TOOLBOX 130 
 void* MFI_STAT_INVALID_CMD ; 
 int /*<<< orphan*/  MFI_STAT_OK ; 
 int /*<<< orphan*/  MR_DCMD_CTRL_SHUTDOWN ; 
 int /*<<< orphan*/  MR_DCMD_LD_MAP_GET_INFO ; 
 int /*<<< orphan*/  MR_DCMD_SYSTEM_PD_MAP_GET_INFO ; 
#define  REFIRE_CMD 129 
#define  RETURN_CMD 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct megasas_instance*,struct megasas_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct megasas_instance*,union MEGASAS_REQUEST_DESCRIPTOR_UNION*) ; 
 union MEGASAS_REQUEST_DESCRIPTOR_UNION* FUNC4 (struct megasas_instance*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct megasas_instance*,struct megasas_cmd*) ; 

__attribute__((used)) static void FUNC6(struct megasas_instance *instance)
{
	int j;
	struct megasas_cmd_fusion *cmd_fusion;
	struct fusion_context *fusion;
	struct megasas_cmd *cmd_mfi;
	union MEGASAS_REQUEST_DESCRIPTOR_UNION *req_desc;
	u16 smid;
	bool refire_cmd = 0;
	u8 result;
	u32 opcode = 0;

	fusion = instance->ctrl_context;

	/* Re-fire management commands.
	 * Do not traverse complet MPT frame pool. Start from max_scsi_cmds.
	 */
	for (j = instance->max_scsi_cmds ; j < instance->max_fw_cmds; j++) {
		cmd_fusion = fusion->cmd_list[j];
		cmd_mfi = instance->cmd_list[cmd_fusion->sync_cmd_idx];
		smid = FUNC0(cmd_mfi->context.smid);
		result = REFIRE_CMD;

		if (!smid)
			continue;

		req_desc = FUNC4(instance, smid - 1);

		switch (cmd_mfi->frame->hdr.cmd) {
		case MFI_CMD_DCMD:
			opcode = FUNC1(cmd_mfi->frame->dcmd.opcode);
			 /* Do not refire shutdown command */
			if (opcode == MR_DCMD_CTRL_SHUTDOWN) {
				cmd_mfi->frame->dcmd.cmd_status = MFI_STAT_OK;
				result = COMPLETE_CMD;
				break;
			}

			refire_cmd = ((opcode != MR_DCMD_LD_MAP_GET_INFO)) &&
				      (opcode != MR_DCMD_SYSTEM_PD_MAP_GET_INFO) &&
				      !(cmd_mfi->flags & DRV_DCMD_SKIP_REFIRE);

			if (!refire_cmd)
				result = RETURN_CMD;

			break;
		case MFI_CMD_NVME:
			if (!instance->support_nvme_passthru) {
				cmd_mfi->frame->hdr.cmd_status = MFI_STAT_INVALID_CMD;
				result = COMPLETE_CMD;
			}

			break;
		case MFI_CMD_TOOLBOX:
			if (!instance->support_pci_lane_margining) {
				cmd_mfi->frame->hdr.cmd_status = MFI_STAT_INVALID_CMD;
				result = COMPLETE_CMD;
			}

			break;
		default:
			break;
		}

		switch (result) {
		case REFIRE_CMD:
			FUNC3(instance, req_desc);
			break;
		case RETURN_CMD:
			FUNC5(instance, cmd_mfi);
			break;
		case COMPLETE_CMD:
			FUNC2(instance, cmd_mfi, DID_OK);
			break;
		}
	}
}