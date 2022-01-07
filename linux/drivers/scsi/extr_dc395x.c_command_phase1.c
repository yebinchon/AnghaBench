
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct ScsiReqBlk {int flag; int state; TYPE_1__* cmd; } ;
struct DeviceCtlBlk {int target_lun; } ;
struct AdapterCtlBlk {struct DeviceCtlBlk* active_dcb; } ;
struct TYPE_2__ {scalar_t__ cmd_len; scalar_t__ cmnd; } ;


 int AUTO_REQSENSE ;
 int DBG_0 ;
 int DC395x_write16 (struct AdapterCtlBlk*,int ,int ) ;
 int DC395x_write8 (struct AdapterCtlBlk*,int ,int) ;
 int DO_CLRATN ;
 int DO_DATALATCH ;
 int REQUEST_SENSE ;
 int SCMD_FIFO_OUT ;
 int SCSI_SENSE_BUFFERSIZE ;
 int SRB_COMMAND ;
 int TRM_S1040_SCSI_COMMAND ;
 int TRM_S1040_SCSI_CONTROL ;
 int TRM_S1040_SCSI_FIFO ;
 int clear_fifo (struct AdapterCtlBlk*,char*) ;
 int dprintkdbg (int ,char*,TYPE_1__*) ;

__attribute__((used)) static void command_phase1(struct AdapterCtlBlk *acb, struct ScsiReqBlk *srb,
  u16 *pscsi_status)
{
 struct DeviceCtlBlk *dcb;
 u8 *ptr;
 u16 i;
 dprintkdbg(DBG_0, "command_phase1: (0x%p)\n", srb->cmd);

 clear_fifo(acb, "command_phase1");
 DC395x_write16(acb, TRM_S1040_SCSI_CONTROL, DO_CLRATN);
 if (!(srb->flag & AUTO_REQSENSE)) {
  ptr = (u8 *)srb->cmd->cmnd;
  for (i = 0; i < srb->cmd->cmd_len; i++) {
   DC395x_write8(acb, TRM_S1040_SCSI_FIFO, *ptr);
   ptr++;
  }
 } else {
  DC395x_write8(acb, TRM_S1040_SCSI_FIFO, REQUEST_SENSE);
  dcb = acb->active_dcb;

  DC395x_write8(acb, TRM_S1040_SCSI_FIFO, (dcb->target_lun << 5));
  DC395x_write8(acb, TRM_S1040_SCSI_FIFO, 0);
  DC395x_write8(acb, TRM_S1040_SCSI_FIFO, 0);
  DC395x_write8(acb, TRM_S1040_SCSI_FIFO, SCSI_SENSE_BUFFERSIZE);
  DC395x_write8(acb, TRM_S1040_SCSI_FIFO, 0);
 }
 srb->state |= SRB_COMMAND;

 DC395x_write16(acb, TRM_S1040_SCSI_CONTROL, DO_DATALATCH);

 DC395x_write8(acb, TRM_S1040_SCSI_COMMAND, SCMD_FIFO_OUT);
}
