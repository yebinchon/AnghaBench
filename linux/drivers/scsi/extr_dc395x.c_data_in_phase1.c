
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ScsiReqBlk {TYPE_2__* cmd; } ;
struct AdapterCtlBlk {int dummy; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {scalar_t__ lun; int id; } ;


 int DBG_0 ;
 int XFERDATAIN ;
 int data_io_transfer (struct AdapterCtlBlk*,struct ScsiReqBlk*,int ) ;
 int dprintkdbg (int ,char*,TYPE_2__*,int ,int ) ;

__attribute__((used)) static void data_in_phase1(struct AdapterCtlBlk *acb, struct ScsiReqBlk *srb,
  u16 *pscsi_status)
{
 dprintkdbg(DBG_0, "data_in_phase1: (0x%p) <%02i-%i>\n",
  srb->cmd, srb->cmd->device->id, (u8)srb->cmd->device->lun);
 data_io_transfer(acb, srb, XFERDATAIN);
}
