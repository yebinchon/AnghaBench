
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ timer_pops; int started; int timer; } ;
struct scsi_info {int flags; int state; int dev; TYPE_1__ rsp_q_timer; } ;
typedef int ktime_t ;


 int CLIENT_FAILED ;
 int ERR_DISCONNECT ;
 int ERR_DISCONNECTED ;
 int ERR_DISCONNECT_RECONNECT ;
 int HRTIMER_MODE_REL ;
 long H_CLOSED ;
 long H_DROPPED ;
 scalar_t__ MAX_TIMER_POPS ;
 int RESPONSE_Q_DOWN ;
 scalar_t__ SRP_PROCESSING ;
 int UNDEFINED ;
 int WAIT_NANO_SECONDS ;
 int WAIT_SECONDS ;
 int dev_dbg (int *,char*,int,int,scalar_t__) ;
 int dev_err (int *,char*,...) ;
 int hrtimer_start (int *,int ,int ) ;
 int ibmvscsis_free_cmd_qs (struct scsi_info*) ;
 int ibmvscsis_post_disconnect (struct scsi_info*,int,int ) ;
 int ktime_set (int ,int ) ;

__attribute__((used)) static void srp_snd_msg_failed(struct scsi_info *vscsi, long rc)
{
 ktime_t kt;

 if (rc != H_DROPPED) {
  ibmvscsis_free_cmd_qs(vscsi);

  if (rc == H_CLOSED)
   vscsi->flags |= CLIENT_FAILED;


  if (!(vscsi->flags & RESPONSE_Q_DOWN)) {
   vscsi->flags |= RESPONSE_Q_DOWN;
   if (!(vscsi->state & (ERR_DISCONNECT |
           ERR_DISCONNECT_RECONNECT |
           ERR_DISCONNECTED | UNDEFINED))) {
    dev_err(&vscsi->dev, "snd_msg_failed: setting RESPONSE_Q_DOWN, state 0x%hx, flags 0x%x, rc %ld\n",
     vscsi->state, vscsi->flags, rc);
   }
   ibmvscsis_post_disconnect(vscsi,
        ERR_DISCONNECT_RECONNECT, 0);
  }
  return;
 }
 if ((vscsi->rsp_q_timer.timer_pops < MAX_TIMER_POPS) ||
     (vscsi->state == SRP_PROCESSING)) {
  dev_dbg(&vscsi->dev, "snd_msg_failed: response queue full, flags 0x%x, timer started %d, pops %d\n",
   vscsi->flags, (int)vscsi->rsp_q_timer.started,
   vscsi->rsp_q_timer.timer_pops);





  if (!vscsi->rsp_q_timer.started) {
   if (vscsi->rsp_q_timer.timer_pops <
       MAX_TIMER_POPS) {
    kt = WAIT_NANO_SECONDS;
   } else {




    kt = ktime_set(WAIT_SECONDS, 0);
   }

   vscsi->rsp_q_timer.started = 1;
   hrtimer_start(&vscsi->rsp_q_timer.timer, kt,
          HRTIMER_MODE_REL);
  }
 } else {
  vscsi->flags |= RESPONSE_Q_DOWN;
  ibmvscsis_free_cmd_qs(vscsi);





  if (!(vscsi->state & (ERR_DISCONNECT |
          ERR_DISCONNECT_RECONNECT |
          ERR_DISCONNECTED | UNDEFINED))) {
   dev_err(&vscsi->dev, "client crq full too long\n");
   ibmvscsis_post_disconnect(vscsi,
        ERR_DISCONNECT_RECONNECT,
        0);
  }
 }
}
