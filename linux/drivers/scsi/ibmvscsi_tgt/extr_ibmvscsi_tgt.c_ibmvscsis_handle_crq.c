
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint ;
typedef scalar_t__ u8 ;
struct viosrp_crq {scalar_t__ valid; } ;
struct TYPE_2__ {int index; int mask; struct viosrp_crq* base_addr; } ;
struct scsi_info {long flags; int state; int intr_lock; int schedule_q; int dev; TYPE_1__ cmd_q; int dma_dev; } ;


 scalar_t__ INVALIDATE_CMD_RESP_EL ;
 long SCHEDULE_DISCONNECT ;
 scalar_t__ TARGET_STOP (struct scsi_info*) ;
 int TRANS_EVENT ;
 scalar_t__ VALID_TRANS_EVENT ;
 int dev_dbg (int *,char*,...) ;
 int dma_rmb () ;
 long ibmvscsis_parse_command (struct scsi_info*,struct viosrp_crq*) ;
 long ibmvscsis_trans_event (struct scsi_info*,struct viosrp_crq*) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int vio_enable_interrupts (int ) ;

__attribute__((used)) static void ibmvscsis_handle_crq(unsigned long data)
{
 struct scsi_info *vscsi = (struct scsi_info *)data;
 struct viosrp_crq *crq;
 long rc;
 bool ack = 1;
 volatile u8 valid;

 spin_lock_bh(&vscsi->intr_lock);

 dev_dbg(&vscsi->dev, "got interrupt\n");






 if (TARGET_STOP(vscsi)) {
  vio_enable_interrupts(vscsi->dma_dev);

  dev_dbg(&vscsi->dev, "handle_crq, don't process: flags 0x%x, state 0x%hx\n",
   vscsi->flags, vscsi->state);
  spin_unlock_bh(&vscsi->intr_lock);
  return;
 }

 rc = vscsi->flags & SCHEDULE_DISCONNECT;
 crq = vscsi->cmd_q.base_addr + vscsi->cmd_q.index;
 valid = crq->valid;
 dma_rmb();

 while (valid) {






cmd_work:
  vscsi->cmd_q.index =
   (vscsi->cmd_q.index + 1) & vscsi->cmd_q.mask;

  if (!rc) {
   rc = ibmvscsis_parse_command(vscsi, crq);
  } else {
   if ((uint)crq->valid == VALID_TRANS_EVENT) {






    rc = ibmvscsis_trans_event(vscsi, crq);
   } else if (vscsi->flags & TRANS_EVENT) {







    if (vscsi->cmd_q.index)
     vscsi->cmd_q.index -= 1;
    else




     vscsi->cmd_q.index = vscsi->cmd_q.mask;
    break;
   }
  }

  crq->valid = INVALIDATE_CMD_RESP_EL;

  crq = vscsi->cmd_q.base_addr + vscsi->cmd_q.index;
  valid = crq->valid;
  dma_rmb();
 }

 if (!rc) {
  if (ack) {
   vio_enable_interrupts(vscsi->dma_dev);
   ack = 0;
   dev_dbg(&vscsi->dev, "handle_crq, reenabling interrupts\n");
  }
  valid = crq->valid;
  dma_rmb();
  if (valid)
   goto cmd_work;
 } else {
  dev_dbg(&vscsi->dev, "handle_crq, error: flags 0x%x, state 0x%hx, crq index 0x%x\n",
   vscsi->flags, vscsi->state, vscsi->cmd_q.index);
 }

 dev_dbg(&vscsi->dev, "Leaving handle_crq: schedule_q empty %d, flags 0x%x, state 0x%hx\n",
  (int)list_empty(&vscsi->schedule_q), vscsi->flags,
  vscsi->state);

 spin_unlock_bh(&vscsi->intr_lock);
}
