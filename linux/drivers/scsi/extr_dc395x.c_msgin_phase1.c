
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ScsiReqBlk {int state; int cmd; } ;
struct AdapterCtlBlk {int dummy; } ;


 int DBG_0 ;
 int DC395x_write16 (struct AdapterCtlBlk*,int ,int ) ;
 int DC395x_write32 (struct AdapterCtlBlk*,int ,int) ;
 int DC395x_write8 (struct AdapterCtlBlk*,int ,int ) ;
 int DO_DATALATCH ;
 int SCMD_FIFO_IN ;
 int SRB_DISCONNECT ;
 int SRB_MSGIN ;
 int TRM_S1040_SCSI_COMMAND ;
 int TRM_S1040_SCSI_CONTROL ;
 int TRM_S1040_SCSI_COUNTER ;
 int clear_fifo (struct AdapterCtlBlk*,char*) ;
 int dprintkdbg (int ,char*,int ) ;

__attribute__((used)) static void msgin_phase1(struct AdapterCtlBlk *acb, struct ScsiReqBlk *srb,
  u16 *pscsi_status)
{
 dprintkdbg(DBG_0, "msgin_phase1: (0x%p)\n", srb->cmd);
 clear_fifo(acb, "msgin_phase1");
 DC395x_write32(acb, TRM_S1040_SCSI_COUNTER, 1);
 if (!(srb->state & SRB_MSGIN)) {
  srb->state &= ~SRB_DISCONNECT;
  srb->state |= SRB_MSGIN;
 }
 DC395x_write16(acb, TRM_S1040_SCSI_CONTROL, DO_DATALATCH);

 DC395x_write8(acb, TRM_S1040_SCSI_COMMAND, SCMD_FIFO_IN);
}
