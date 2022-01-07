
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct ScsiReqBlk {int state; scalar_t__ msg_count; scalar_t__* msgout_buf; int cmd; } ;
struct AdapterCtlBlk {int dummy; } ;


 int DBG_0 ;
 int DC395x_write16 (struct AdapterCtlBlk*,int ,int ) ;
 int DC395x_write8 (struct AdapterCtlBlk*,int ,int ) ;
 int DO_DATALATCH ;
 int KERN_DEBUG ;
 scalar_t__ MSG_ABORT ;
 int MSG_NOP ;
 int SCMD_FIFO_OUT ;
 int SRB_ABORT_SENT ;
 int SRB_MSGOUT ;
 int TRM_S1040_SCSI_COMMAND ;
 int TRM_S1040_SCSI_CONTROL ;
 int TRM_S1040_SCSI_FIFO ;
 int clear_fifo (struct AdapterCtlBlk*,char*) ;
 int dprintkdbg (int ,char*,int ) ;
 int dprintkl (int ,char*,int ) ;

__attribute__((used)) static void msgout_phase1(struct AdapterCtlBlk *acb, struct ScsiReqBlk *srb,
  u16 *pscsi_status)
{
 u16 i;
 u8 *ptr;
 dprintkdbg(DBG_0, "msgout_phase1: (0x%p)\n", srb->cmd);

 clear_fifo(acb, "msgout_phase1");
 if (!(srb->state & SRB_MSGOUT)) {
  srb->state |= SRB_MSGOUT;
  dprintkl(KERN_DEBUG,
   "msgout_phase1: (0x%p) Phase unexpected\n",
   srb->cmd);
 }
 if (!srb->msg_count) {
  dprintkdbg(DBG_0, "msgout_phase1: (0x%p) NOP msg\n",
   srb->cmd);
  DC395x_write8(acb, TRM_S1040_SCSI_FIFO, MSG_NOP);
  DC395x_write16(acb, TRM_S1040_SCSI_CONTROL, DO_DATALATCH);
  DC395x_write8(acb, TRM_S1040_SCSI_COMMAND, SCMD_FIFO_OUT);
  return;
 }
 ptr = (u8 *)srb->msgout_buf;
 for (i = 0; i < srb->msg_count; i++)
  DC395x_write8(acb, TRM_S1040_SCSI_FIFO, *ptr++);
 srb->msg_count = 0;
 if (srb->msgout_buf[0] == MSG_ABORT)
  srb->state = SRB_ABORT_SENT;

 DC395x_write8(acb, TRM_S1040_SCSI_COMMAND, SCMD_FIFO_OUT);
}
