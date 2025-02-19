
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int sc_data_direction; int result; int sense_buffer; int * cmnd; int cmd_len; TYPE_1__* device; } ;
struct mvumi_msg_frame {unsigned short device_id; scalar_t__ data_transfer_length; scalar_t__ sg_counts; int * payload; int req_function; int cdb_length; int cdb; scalar_t__ cmd_flag; } ;
struct mvumi_hba {TYPE_2__* pdev; } ;
struct mvumi_cmd {struct mvumi_msg_frame* frame; int cmd_status; struct scsi_cmnd* scmd; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ lun; scalar_t__ id; } ;


 int CL_FUN_SCSI_CMD ;
 scalar_t__ CMD_FLAG_DATA_IN ;
 scalar_t__ CMD_FLAG_DATA_OUT ;
 scalar_t__ CMD_FLAG_NON_DATA ;
 int DID_OK ;




 int DRIVER_SENSE ;
 int ILLEGAL_REQUEST ;
 int REQ_STATUS_PENDING ;
 int SAM_STAT_CHECK_CONDITION ;
 int dev_warn (int *,char*,int,int ) ;
 int memcpy (int ,int *,int ) ;
 scalar_t__ mvumi_make_sgl (struct mvumi_hba*,struct scsi_cmnd*,int *,scalar_t__*) ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_build_sense_buffer (int ,int ,int ,int,int ) ;

__attribute__((used)) static unsigned char mvumi_build_frame(struct mvumi_hba *mhba,
    struct scsi_cmnd *scmd, struct mvumi_cmd *cmd)
{
 struct mvumi_msg_frame *pframe;

 cmd->scmd = scmd;
 cmd->cmd_status = REQ_STATUS_PENDING;
 pframe = cmd->frame;
 pframe->device_id = ((unsigned short) scmd->device->id) |
    (((unsigned short) scmd->device->lun) << 8);
 pframe->cmd_flag = 0;

 switch (scmd->sc_data_direction) {
 case 129:
  pframe->cmd_flag |= CMD_FLAG_NON_DATA;
  break;
 case 130:
  pframe->cmd_flag |= CMD_FLAG_DATA_IN;
  break;
 case 128:
  pframe->cmd_flag |= CMD_FLAG_DATA_OUT;
  break;
 case 131:
 default:
  dev_warn(&mhba->pdev->dev, "unexpected data direction[%d] "
   "cmd[0x%x]\n", scmd->sc_data_direction, scmd->cmnd[0]);
  goto error;
 }

 pframe->cdb_length = scmd->cmd_len;
 memcpy(pframe->cdb, scmd->cmnd, pframe->cdb_length);
 pframe->req_function = CL_FUN_SCSI_CMD;
 if (scsi_bufflen(scmd)) {
  if (mvumi_make_sgl(mhba, scmd, &pframe->payload[0],
   &pframe->sg_counts))
   goto error;

  pframe->data_transfer_length = scsi_bufflen(scmd);
 } else {
  pframe->sg_counts = 0;
  pframe->data_transfer_length = 0;
 }
 return 0;

error:
 scmd->result = (DID_OK << 16) | (DRIVER_SENSE << 24) |
  SAM_STAT_CHECK_CONDITION;
 scsi_build_sense_buffer(0, scmd->sense_buffer, ILLEGAL_REQUEST, 0x24,
         0);
 return -1;
}
