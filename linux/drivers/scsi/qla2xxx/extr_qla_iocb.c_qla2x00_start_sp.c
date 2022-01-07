
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


struct qla_qpair {int qp_lock_ptr; int req; } ;
struct qla_hw_data {int dummy; } ;
struct TYPE_31__ {int timer; } ;
struct TYPE_32__ {TYPE_1__ iocb_cmd; } ;
struct TYPE_33__ {int type; TYPE_2__ u; scalar_t__ start_timer; struct qla_qpair* qpair; TYPE_4__* vha; } ;
typedef TYPE_3__ srb_t ;
struct TYPE_34__ {struct qla_hw_data* hw; } ;
typedef TYPE_4__ scsi_qla_host_t ;


 int EAGAIN ;
 int IS_FWI2_CAPABLE (struct qla_hw_data*) ;
 int IS_QLAFX00 (struct qla_hw_data*) ;
 int QLA_SUCCESS ;
 void* __qla2x00_alloc_iocbs (struct qla_qpair*,TYPE_3__*) ;
 int add_timer (int *) ;
 int ql_log (int ,TYPE_4__*,int,char*) ;
 int ql_log_warn ;
 int qla24xx_abort_iocb (TYPE_3__*,void*) ;
 int qla24xx_adisc_iocb (TYPE_3__*,void*) ;
 int qla24xx_ct_iocb (TYPE_3__*,void*) ;
 int qla24xx_els_iocb (TYPE_3__*,void*) ;
 int qla24xx_els_logo_iocb (TYPE_3__*,void*) ;
 int qla24xx_login_iocb (TYPE_3__*,void*) ;
 int qla24xx_logout_iocb (TYPE_3__*,void*) ;
 int qla24xx_prli_iocb (TYPE_3__*,void*) ;
 int qla24xx_prlo_iocb (TYPE_3__*,void*) ;
 int qla24xx_tm_iocb (TYPE_3__*,void*) ;
 int qla25xx_ctrlvp_iocb (TYPE_3__*,void*) ;
 int qla2x00_adisc_iocb (TYPE_3__*,void*) ;
 int qla2x00_ct_iocb (TYPE_3__*,void*) ;
 int qla2x00_ctpthru_cmd_iocb (TYPE_3__*,void*) ;
 int qla2x00_login_iocb (TYPE_3__*,void*) ;
 int qla2x00_logout_iocb (TYPE_3__*,void*) ;
 int qla2x00_mb_iocb (TYPE_3__*,void*) ;
 int qla2x00_send_notify_ack_iocb (TYPE_3__*,void*) ;
 int qla2x00_start_iocbs (TYPE_4__*,int ) ;
 int qla_nvme_ls (TYPE_3__*,void*) ;
 int qlafx00_abort_iocb (TYPE_3__*,void*) ;
 int qlafx00_fxdisc_iocb (TYPE_3__*,void*) ;
 int qlafx00_tm_iocb (TYPE_3__*,void*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wmb () ;

int
qla2x00_start_sp(srb_t *sp)
{
 int rval = QLA_SUCCESS;
 scsi_qla_host_t *vha = sp->vha;
 struct qla_hw_data *ha = vha->hw;
 struct qla_qpair *qp = sp->qpair;
 void *pkt;
 unsigned long flags;

 spin_lock_irqsave(qp->qp_lock_ptr, flags);
 pkt = __qla2x00_alloc_iocbs(sp->qpair, sp);
 if (!pkt) {
  rval = EAGAIN;
  ql_log(ql_log_warn, vha, 0x700c,
      "qla2x00_alloc_iocbs failed.\n");
  goto done;
 }

 switch (sp->type) {
 case 137:
  IS_FWI2_CAPABLE(ha) ?
      qla24xx_login_iocb(sp, pkt) :
      qla2x00_login_iocb(sp, pkt);
  break;
 case 130:
  qla24xx_prli_iocb(sp, pkt);
  break;
 case 136:
  IS_FWI2_CAPABLE(ha) ?
      qla24xx_logout_iocb(sp, pkt) :
      qla2x00_logout_iocb(sp, pkt);
  break;
 case 141:
 case 142:
  qla24xx_els_iocb(sp, pkt);
  break;
 case 144:
  IS_FWI2_CAPABLE(ha) ?
      qla24xx_ct_iocb(sp, pkt) :
      qla2x00_ct_iocb(sp, pkt);
  break;
 case 146:
  IS_FWI2_CAPABLE(ha) ?
      qla24xx_adisc_iocb(sp, pkt) :
      qla2x00_adisc_iocb(sp, pkt);
  break;
 case 128:
  IS_QLAFX00(ha) ?
      qlafx00_tm_iocb(sp, pkt) :
      qla24xx_tm_iocb(sp, pkt);
  break;
 case 138:
 case 139:
  qlafx00_fxdisc_iocb(sp, pkt);
  break;
 case 131:
  qla_nvme_ls(sp, pkt);
  break;
 case 147:
  IS_QLAFX00(ha) ?
   qlafx00_abort_iocb(sp, pkt) :
   qla24xx_abort_iocb(sp, pkt);
  break;
 case 140:
  qla24xx_els_logo_iocb(sp, pkt);
  break;
 case 143:
  qla2x00_ctpthru_cmd_iocb(sp, pkt);
  break;
 case 135:
  qla2x00_mb_iocb(sp, pkt);
  break;
 case 133:
 case 132:
 case 134:
  qla2x00_send_notify_ack_iocb(sp, pkt);
  break;
 case 145:
  qla25xx_ctrlvp_iocb(sp, pkt);
  break;
 case 129:
  qla24xx_prlo_iocb(sp, pkt);
  break;
 default:
  break;
 }

 if (sp->start_timer)
  add_timer(&sp->u.iocb_cmd.timer);

 wmb();
 qla2x00_start_iocbs(vha, qp->req);
done:
 spin_unlock_irqrestore(qp->qp_lock_ptr, flags);
 return rval;
}
