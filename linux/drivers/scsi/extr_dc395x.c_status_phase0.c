
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ScsiReqBlk {int state; void* end_message; void* target_status; TYPE_2__* cmd; } ;
struct AdapterCtlBlk {int dummy; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {scalar_t__ lun; int id; } ;


 int DBG_0 ;
 void* DC395x_read8 (struct AdapterCtlBlk*,int ) ;
 int DC395x_write16 (struct AdapterCtlBlk*,int ,int ) ;
 int DC395x_write8 (struct AdapterCtlBlk*,int ,int ) ;
 int DO_DATALATCH ;
 int PH_BUS_FREE ;
 int SCMD_MSGACCEPT ;
 int SRB_COMPLETED ;
 int TRM_S1040_SCSI_COMMAND ;
 int TRM_S1040_SCSI_CONTROL ;
 int TRM_S1040_SCSI_FIFO ;
 int dprintkdbg (int ,char*,TYPE_2__*,int ,int ) ;

__attribute__((used)) static void status_phase0(struct AdapterCtlBlk *acb, struct ScsiReqBlk *srb,
  u16 *pscsi_status)
{
 dprintkdbg(DBG_0, "status_phase0: (0x%p) <%02i-%i>\n",
  srb->cmd, srb->cmd->device->id, (u8)srb->cmd->device->lun);
 srb->target_status = DC395x_read8(acb, TRM_S1040_SCSI_FIFO);
 srb->end_message = DC395x_read8(acb, TRM_S1040_SCSI_FIFO);
 srb->state = SRB_COMPLETED;
 *pscsi_status = PH_BUS_FREE;
 DC395x_write16(acb, TRM_S1040_SCSI_CONTROL, DO_DATALATCH);
 DC395x_write8(acb, TRM_S1040_SCSI_COMMAND, SCMD_MSGACCEPT);
}
