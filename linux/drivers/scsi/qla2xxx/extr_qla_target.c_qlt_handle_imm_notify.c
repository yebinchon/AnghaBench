
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_5__ {struct qla_tgt* qla_tgt; } ;
struct scsi_qla_host {int host_no; int vp_idx; TYPE_1__ vha_tgt; struct qla_hw_data* hw; } ;
struct TYPE_7__ {int task_flags; int lun; int seq_id; int status; } ;
struct TYPE_6__ {int status_subcode; int nport_handle; } ;
struct TYPE_8__ {TYPE_3__ isp2x; TYPE_2__ isp24; } ;
struct imm_ntfy_from_isp {TYPE_4__ u; } ;
struct qla_tgt {int link_reinit_iocb_pending; struct imm_ntfy_from_isp link_reinit_iocb; } ;
struct qla_hw_data {int base_qpair; int hardware_lock; } ;
struct atio_from_isp {int dummy; } ;


 int GET_TARGET_ID (struct qla_hw_data*,struct atio_from_isp*) ;
 int QLA_TGT_ABORT_ALL ;
 int QLA_TGT_NEXUS_LOSS ;
 int QLA_TGT_NEXUS_LOSS_SESS ;
 int le16_to_cpu (int ) ;
 int lockdep_assert_held (int *) ;
 int memcpy (struct imm_ntfy_from_isp*,struct imm_ntfy_from_isp*,int) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int ,...) ;
 int ql_dbg_tgt_mgt ;
 int qlt_24xx_handle_els (struct scsi_qla_host*,struct imm_ntfy_from_isp*) ;
 int qlt_abort_task (struct scsi_qla_host*,struct imm_ntfy_from_isp*) ;
 int qlt_reset (struct scsi_qla_host*,struct imm_ntfy_from_isp*,int ) ;
 int qlt_send_notify_ack (int ,struct imm_ntfy_from_isp*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void qlt_handle_imm_notify(struct scsi_qla_host *vha,
 struct imm_ntfy_from_isp *iocb)
{
 struct qla_hw_data *ha = vha->hw;
 uint32_t add_flags = 0;
 int send_notify_ack = 1;
 uint16_t status;

 lockdep_assert_held(&ha->hardware_lock);

 status = le16_to_cpu(iocb->u.isp2x.status);
 switch (status) {
 case 132:
 {
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf032,
      "qla_target(%d): LIP reset (loop %#x), subcode %x\n",
      vha->vp_idx, le16_to_cpu(iocb->u.isp24.nport_handle),
      iocb->u.isp24.status_subcode);

  if (qlt_reset(vha, iocb, QLA_TGT_ABORT_ALL) == 0)
   send_notify_ack = 0;
  break;
 }

 case 133:
 {
  struct qla_tgt *tgt = vha->vha_tgt.qla_tgt;

  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf033,
      "qla_target(%d): LINK REINIT (loop %#x, "
      "subcode %x)\n", vha->vp_idx,
      le16_to_cpu(iocb->u.isp24.nport_handle),
      iocb->u.isp24.status_subcode);
  if (tgt->link_reinit_iocb_pending) {
   qlt_send_notify_ack(ha->base_qpair,
       &tgt->link_reinit_iocb, 0, 0, 0, 0, 0, 0);
  }
  memcpy(&tgt->link_reinit_iocb, iocb, sizeof(*iocb));
  tgt->link_reinit_iocb_pending = 1;




  send_notify_ack = 0;
  break;
 }

 case 129:
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf034,
      "qla_target(%d): Port logout (loop "
      "%#x, subcode %x)\n", vha->vp_idx,
      le16_to_cpu(iocb->u.isp24.nport_handle),
      iocb->u.isp24.status_subcode);

  if (qlt_reset(vha, iocb, QLA_TGT_NEXUS_LOSS_SESS) == 0)
   send_notify_ack = 0;

  break;

 case 135:
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf035,
      "qla_target(%d): Global TPRLO (%x)\n", vha->vp_idx, status);
  if (qlt_reset(vha, iocb, QLA_TGT_NEXUS_LOSS) == 0)
   send_notify_ack = 0;

  break;

 case 130:
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf036,
      "qla_target(%d): Port config changed (%x)\n", vha->vp_idx,
      status);
  if (qlt_reset(vha, iocb, QLA_TGT_ABORT_ALL) == 0)
   send_notify_ack = 0;

  break;

 case 136:
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf06a,
      "qla_target(%d): Link failure detected\n",
      vha->vp_idx);

  if (qlt_reset(vha, iocb, QLA_TGT_NEXUS_LOSS) == 0)
   send_notify_ack = 0;
  break;

 case 134:
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf06b,
      "qla_target(%d): Cannot provide requested "
      "capability (IOCB overflowed the immediate notify "
      "resource count)\n", vha->vp_idx);
  break;

 case 138:
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf037,
      "qla_target(%d): Abort Task (S %08x I %#x -> "
      "L %#x)\n", vha->vp_idx,
      le16_to_cpu(iocb->u.isp2x.seq_id),
      GET_TARGET_ID(ha, (struct atio_from_isp *)iocb),
      le16_to_cpu(iocb->u.isp2x.lun));
  if (qlt_abort_task(vha, iocb) == 0)
   send_notify_ack = 0;
  break;

 case 128:
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf06c,
      "qla_target(%d): Out of resources, host %ld\n",
      vha->vp_idx, vha->host_no);
  break;

 case 131:
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf038,
      "qla_target(%d): Immediate notify task %x\n",
      vha->vp_idx, iocb->u.isp2x.task_flags);
  break;

 case 137:
  if (qlt_24xx_handle_els(vha, iocb) == 0)
   send_notify_ack = 0;
  break;
 default:
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf06d,
      "qla_target(%d): Received unknown immediate "
      "notify status %x\n", vha->vp_idx, status);
  break;
 }

 if (send_notify_ack)
  qlt_send_notify_ack(ha->base_qpair, iocb, add_flags, 0, 0, 0,
      0, 0);
}
