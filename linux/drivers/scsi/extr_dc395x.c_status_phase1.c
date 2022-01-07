
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ScsiReqBlk {int state; TYPE_2__* cmd; } ;
struct AdapterCtlBlk {int dummy; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {scalar_t__ lun; int id; } ;


 int DBG_0 ;
 int DC395x_write16 (struct AdapterCtlBlk*,int ,int ) ;
 int DC395x_write8 (struct AdapterCtlBlk*,int ,int ) ;
 int DO_DATALATCH ;
 int SCMD_COMP ;
 int SRB_STATUS ;
 int TRM_S1040_SCSI_COMMAND ;
 int TRM_S1040_SCSI_CONTROL ;
 int dprintkdbg (int ,char*,TYPE_2__*,int ,int ) ;

__attribute__((used)) static void status_phase1(struct AdapterCtlBlk *acb, struct ScsiReqBlk *srb,
  u16 *pscsi_status)
{
 dprintkdbg(DBG_0, "status_phase1: (0x%p) <%02i-%i>\n",
  srb->cmd, srb->cmd->device->id, (u8)srb->cmd->device->lun);
 srb->state = SRB_STATUS;
 DC395x_write16(acb, TRM_S1040_SCSI_CONTROL, DO_DATALATCH);
 DC395x_write8(acb, TRM_S1040_SCSI_COMMAND, SCMD_COMP);
}
