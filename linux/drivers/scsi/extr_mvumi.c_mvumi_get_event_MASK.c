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
struct mvumi_msg_frame {int data_transfer_length; unsigned char* cdb; int /*<<< orphan*/  cdb_length; int /*<<< orphan*/  req_function; int /*<<< orphan*/  cmd_flag; scalar_t__ device_id; } ;
struct mvumi_hba {TYPE_1__* pdev; } ;
struct mvumi_event_req {int dummy; } ;
struct mvumi_cmd {scalar_t__ cmd_status; int /*<<< orphan*/  data_buf; struct mvumi_msg_frame* frame; int /*<<< orphan*/  sync_cmd; int /*<<< orphan*/ * scmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned char APICDB0_EVENT ; 
 int /*<<< orphan*/  CL_FUN_SCSI_CMD ; 
 int /*<<< orphan*/  CMD_FLAG_DATA_IN ; 
 int /*<<< orphan*/  MAX_COMMAND_SIZE ; 
 scalar_t__ REQ_STATUS_PENDING ; 
 scalar_t__ SAM_STAT_GOOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mvumi_cmd* FUNC3 (struct mvumi_hba*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mvumi_hba*,struct mvumi_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct mvumi_hba*,struct mvumi_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct mvumi_hba*,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mvumi_hba *mhba, unsigned char msg)
{
	struct mvumi_cmd *cmd;
	struct mvumi_msg_frame *frame;

	cmd = FUNC3(mhba, 512);
	if (!cmd)
		return -1;
	cmd->scmd = NULL;
	cmd->cmd_status = REQ_STATUS_PENDING;
	FUNC0(&cmd->sync_cmd, 0);
	frame = cmd->frame;
	frame->device_id = 0;
	frame->cmd_flag = CMD_FLAG_DATA_IN;
	frame->req_function = CL_FUN_SCSI_CMD;
	frame->cdb_length = MAX_COMMAND_SIZE;
	frame->data_transfer_length = sizeof(struct mvumi_event_req);
	FUNC2(frame->cdb, 0, MAX_COMMAND_SIZE);
	frame->cdb[0] = APICDB0_EVENT;
	frame->cdb[1] = msg;
	FUNC5(mhba, cmd);

	if (cmd->cmd_status != SAM_STAT_GOOD)
		FUNC1(&mhba->pdev->dev, "get event failed, status=0x%x.\n",
							cmd->cmd_status);
	else
		FUNC6(mhba, cmd->frame->cdb[1], cmd->data_buf);

	FUNC4(mhba, cmd);
	return 0;
}