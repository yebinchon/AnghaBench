
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct scsi_qla_host {TYPE_3__* hw; int fcport_count; } ;
struct TYPE_12__ {int (* free ) (TYPE_4__*) ;TYPE_6__* fcport; int type; int name; struct scsi_qla_host* vha; } ;
typedef TYPE_4__ srb_t ;
struct TYPE_13__ {int logout_on_delete; int login_succ; int fw_login_state; int login_gen; int deleted; int disc_state; int login_retry; int d_id; int send_els_logo; scalar_t__ plogi_nack_done_deadline; int chip_reset; int flags; int port_name; } ;
struct TYPE_10__ {int sess_lock; } ;
struct TYPE_11__ {TYPE_2__ tgt; TYPE_1__* base_qpair; } ;
struct TYPE_9__ {int chip_reset; } ;


 int DSC_LOGIN_COMPLETE ;
 int DSC_LS_PLOGI_COMP ;
 int DSC_LS_PORT_UNAVAIL ;
 int DSC_LS_PRLI_COMP ;
 int FCF_ASYNC_SENT ;
 scalar_t__ HZ ;
 int IS_SW_RESV_ADDR (int ) ;
 int MBS_COMMAND_COMPLETE ;



 scalar_t__ jiffies ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int ,int,int ,int ) ;
 int ql_dbg_disc ;
 int qla24xx_sched_upd_fcport (TYPE_6__*) ;
 int qlt_logo_completion_handler (TYPE_6__*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static void qla2x00_async_nack_sp_done(srb_t *sp, int res)
{
 struct scsi_qla_host *vha = sp->vha;
 unsigned long flags;

 ql_dbg(ql_dbg_disc, vha, 0x20f2,
     "Async done-%s res %x %8phC  type %d\n",
     sp->name, res, sp->fcport->port_name, sp->type);

 spin_lock_irqsave(&vha->hw->tgt.sess_lock, flags);
 sp->fcport->flags &= ~FCF_ASYNC_SENT;
 sp->fcport->chip_reset = vha->hw->base_qpair->chip_reset;

 switch (sp->type) {
 case 129:
  sp->fcport->login_gen++;
  sp->fcport->fw_login_state = DSC_LS_PLOGI_COMP;
  sp->fcport->logout_on_delete = 1;
  sp->fcport->plogi_nack_done_deadline = jiffies + HZ;
  sp->fcport->send_els_logo = 0;
  break;

 case 128:
  sp->fcport->fw_login_state = DSC_LS_PRLI_COMP;
  sp->fcport->deleted = 0;
  sp->fcport->send_els_logo = 0;

  if (!sp->fcport->login_succ &&
      !IS_SW_RESV_ADDR(sp->fcport->d_id)) {
   sp->fcport->login_succ = 1;

   vha->fcport_count++;
   spin_unlock_irqrestore(&vha->hw->tgt.sess_lock, flags);
   qla24xx_sched_upd_fcport(sp->fcport);
   spin_lock_irqsave(&vha->hw->tgt.sess_lock, flags);
  } else {
   sp->fcport->login_retry = 0;
   sp->fcport->disc_state = DSC_LOGIN_COMPLETE;
   sp->fcport->deleted = 0;
   sp->fcport->logout_on_delete = 1;
  }
  break;

 case 130:
  sp->fcport->login_gen++;
  sp->fcport->fw_login_state = DSC_LS_PORT_UNAVAIL;
  qlt_logo_completion_handler(sp->fcport, MBS_COMMAND_COMPLETE);
  break;
 }
 spin_unlock_irqrestore(&vha->hw->tgt.sess_lock, flags);

 sp->free(sp);
}
