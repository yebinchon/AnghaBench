
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int timer_pops; } ;
struct TYPE_3__ {int enabled; } ;
struct scsi_info {int flags; int state; int resume_state; scalar_t__ phyp_acr_state; int phyp_acr_flags; int new_state; int dev; int credit; int debit; TYPE_2__ rsp_q_timer; TYPE_1__ tport; int unconfig; } ;


 int CFG_SLEEPING ;
 int CONNECTED ;
 int DISCONNECT_SCHEDULED ;



 int PREP_FOR_SUSPEND_PENDING ;
 int PRESERVE_FLAG_FIELDS ;
 int RESPONSE_Q_DOWN ;
 int SCHEDULE_DISCONNECT ;
 int TRANS_EVENT ;

 int WAIT_CONNECTION ;
 int WAIT_ENABLED ;

 int complete (int *) ;
 int dev_dbg (int *,char*,int,...) ;
 int dev_err (int *,char*,int) ;
 int dma_rmb () ;
 int ibmvscsis_free_cmd_qs (struct scsi_info*) ;
 int ibmvscsis_free_command_q (struct scsi_info*) ;
 int ibmvscsis_poll_cmd_q (struct scsi_info*) ;
 int ibmvscsis_post_disconnect (struct scsi_info*,scalar_t__,int ) ;
 long ibmvscsis_ready_for_suspend (struct scsi_info*,int) ;
 int ibmvscsis_reset_queue (struct scsi_info*) ;
 int isync () ;

__attribute__((used)) static void ibmvscsis_adapter_idle(struct scsi_info *vscsi)
{
 int free_qs = 0;
 long rc = 0;

 dev_dbg(&vscsi->dev, "adapter_idle: flags 0x%x, state 0x%hx\n",
  vscsi->flags, vscsi->state);


 if (vscsi->state != WAIT_CONNECTION || vscsi->flags & TRANS_EVENT)
  free_qs = 1;

 switch (vscsi->state) {
 case 129:
  ibmvscsis_free_command_q(vscsi);
  dma_rmb();
  isync();
  if (vscsi->flags & CFG_SLEEPING) {
   vscsi->flags &= ~CFG_SLEEPING;
   complete(&vscsi->unconfig);
  }
  break;
 case 130:
  ibmvscsis_reset_queue(vscsi);
  dev_dbg(&vscsi->dev, "adapter_idle, disc_rec: flags 0x%x\n",
   vscsi->flags);
  break;

 case 132:
  ibmvscsis_free_command_q(vscsi);
  vscsi->flags &= ~(SCHEDULE_DISCONNECT | DISCONNECT_SCHEDULED);
  vscsi->flags |= RESPONSE_Q_DOWN;
  if (vscsi->tport.enabled)
   vscsi->state = 131;
  else
   vscsi->state = WAIT_ENABLED;
  dev_dbg(&vscsi->dev, "adapter_idle, disc: flags 0x%x, state 0x%hx\n",
   vscsi->flags, vscsi->state);
  break;

 case 128:
  vscsi->rsp_q_timer.timer_pops = 0;
  vscsi->debit = 0;
  vscsi->credit = 0;
  if (vscsi->flags & PREP_FOR_SUSPEND_PENDING) {
   vscsi->state = vscsi->resume_state;
   vscsi->resume_state = 0;
   rc = ibmvscsis_ready_for_suspend(vscsi, 1);
   vscsi->flags &= ~DISCONNECT_SCHEDULED;
   if (rc)
    break;
  } else if (vscsi->flags & TRANS_EVENT) {
   vscsi->state = WAIT_CONNECTION;
   vscsi->flags &= PRESERVE_FLAG_FIELDS;
  } else {
   vscsi->state = CONNECTED;
   vscsi->flags &= ~DISCONNECT_SCHEDULED;
  }

  dev_dbg(&vscsi->dev, "adapter_idle, wait: flags 0x%x, state 0x%hx\n",
   vscsi->flags, vscsi->state);
  ibmvscsis_poll_cmd_q(vscsi);
  break;

 case 131:
  vscsi->flags &= ~DISCONNECT_SCHEDULED;
  dev_dbg(&vscsi->dev, "adapter_idle, disconnected: flags 0x%x, state 0x%hx\n",
   vscsi->flags, vscsi->state);
  break;

 default:
  dev_err(&vscsi->dev, "adapter_idle: in invalid state %d\n",
   vscsi->state);
  break;
 }

 if (free_qs)
  ibmvscsis_free_cmd_qs(vscsi);
 if (vscsi->phyp_acr_state != 0) {





  vscsi->flags |= vscsi->phyp_acr_flags;
  ibmvscsis_post_disconnect(vscsi, vscsi->phyp_acr_state, 0);
  vscsi->phyp_acr_state = 0;
  vscsi->phyp_acr_flags = 0;

  dev_dbg(&vscsi->dev, "adapter_idle: flags 0x%x, state 0x%hx, acr_flags 0x%x, acr_state 0x%hx\n",
   vscsi->flags, vscsi->state, vscsi->phyp_acr_flags,
   vscsi->phyp_acr_state);
 }

 dev_dbg(&vscsi->dev, "Leaving adapter_idle: flags 0x%x, state 0x%hx, new_state 0x%x\n",
  vscsi->flags, vscsi->state, vscsi->new_state);
}
