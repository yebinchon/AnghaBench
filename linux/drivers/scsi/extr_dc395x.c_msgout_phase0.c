
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ScsiReqBlk {int state; int cmd; } ;
struct AdapterCtlBlk {int dummy; } ;


 int DBG_0 ;
 int DC395x_write16 (struct AdapterCtlBlk*,int ,int ) ;
 int DO_DATALATCH ;
 int PH_BUS_FREE ;
 int SRB_ABORT_SENT ;
 int SRB_MSGOUT ;
 int SRB_UNEXPECT_RESEL ;
 int TRM_S1040_SCSI_CONTROL ;
 int dprintkdbg (int ,char*,int ) ;

__attribute__((used)) static void msgout_phase0(struct AdapterCtlBlk *acb, struct ScsiReqBlk *srb,
  u16 *pscsi_status)
{
 dprintkdbg(DBG_0, "msgout_phase0: (0x%p)\n", srb->cmd);
 if (srb->state & (SRB_UNEXPECT_RESEL + SRB_ABORT_SENT))
  *pscsi_status = PH_BUS_FREE;

 DC395x_write16(acb, TRM_S1040_SCSI_CONTROL, DO_DATALATCH);
 srb->state &= ~SRB_MSGOUT;
}
