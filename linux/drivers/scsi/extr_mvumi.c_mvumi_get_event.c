
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvumi_msg_frame {int data_transfer_length; unsigned char* cdb; int cdb_length; int req_function; int cmd_flag; scalar_t__ device_id; } ;
struct mvumi_hba {TYPE_1__* pdev; } ;
struct mvumi_event_req {int dummy; } ;
struct mvumi_cmd {scalar_t__ cmd_status; int data_buf; struct mvumi_msg_frame* frame; int sync_cmd; int * scmd; } ;
struct TYPE_2__ {int dev; } ;


 unsigned char APICDB0_EVENT ;
 int CL_FUN_SCSI_CMD ;
 int CMD_FLAG_DATA_IN ;
 int MAX_COMMAND_SIZE ;
 scalar_t__ REQ_STATUS_PENDING ;
 scalar_t__ SAM_STAT_GOOD ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*,scalar_t__) ;
 int memset (unsigned char*,int ,int ) ;
 struct mvumi_cmd* mvumi_create_internal_cmd (struct mvumi_hba*,int) ;
 int mvumi_delete_internal_cmd (struct mvumi_hba*,struct mvumi_cmd*) ;
 int mvumi_issue_blocked_cmd (struct mvumi_hba*,struct mvumi_cmd*) ;
 int mvumi_notification (struct mvumi_hba*,unsigned char,int ) ;

__attribute__((used)) static int mvumi_get_event(struct mvumi_hba *mhba, unsigned char msg)
{
 struct mvumi_cmd *cmd;
 struct mvumi_msg_frame *frame;

 cmd = mvumi_create_internal_cmd(mhba, 512);
 if (!cmd)
  return -1;
 cmd->scmd = ((void*)0);
 cmd->cmd_status = REQ_STATUS_PENDING;
 atomic_set(&cmd->sync_cmd, 0);
 frame = cmd->frame;
 frame->device_id = 0;
 frame->cmd_flag = CMD_FLAG_DATA_IN;
 frame->req_function = CL_FUN_SCSI_CMD;
 frame->cdb_length = MAX_COMMAND_SIZE;
 frame->data_transfer_length = sizeof(struct mvumi_event_req);
 memset(frame->cdb, 0, MAX_COMMAND_SIZE);
 frame->cdb[0] = APICDB0_EVENT;
 frame->cdb[1] = msg;
 mvumi_issue_blocked_cmd(mhba, cmd);

 if (cmd->cmd_status != SAM_STAT_GOOD)
  dev_err(&mhba->pdev->dev, "get event failed, status=0x%x.\n",
       cmd->cmd_status);
 else
  mvumi_notification(mhba, cmd->frame->cdb[1], cmd->data_buf);

 mvumi_delete_internal_cmd(mhba, cmd);
 return 0;
}
