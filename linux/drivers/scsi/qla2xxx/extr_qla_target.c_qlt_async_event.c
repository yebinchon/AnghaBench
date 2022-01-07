
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {struct qla_tgt* qla_tgt; } ;
struct scsi_qla_host {struct qla_hw_data* hw; int vp_idx; int dpc_flags; TYPE_1__ vha_tgt; } ;
struct qla_tgt {int link_reinit_iocb_pending; int link_reinit_iocb; scalar_t__ tgt_stopped; scalar_t__ tgt_stop; } ;
struct qla_hw_data {int exch_starvation; int base_qpair; } ;


 int FCOE_CTX_RESET_NEEDED ;
 int ISP_ABORT_NEEDED ;
 int IS_P3P_TYPE (struct qla_hw_data*) ;
 scalar_t__ IS_QLA2100 (struct qla_hw_data*) ;
 int MBA_CHG_IN_CONNECTION ;




 int MBA_POINT_TO_POINT ;
 int le16_to_cpu (int) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,...) ;
 int ql_dbg_tgt_mgt ;
 int ql_log (int ,struct scsi_qla_host*,int,char*) ;
 int ql_log_warn ;
 int qla2xxx_wake_dpc (struct scsi_qla_host*) ;
 int qlt_send_notify_ack (int ,void*,int ,int ,int ,int ,int ,int ) ;
 int set_bit (int ,int *) ;

void qlt_async_event(uint16_t code, struct scsi_qla_host *vha,
 uint16_t *mailbox)
{
 struct qla_hw_data *ha = vha->hw;
 struct qla_tgt *tgt = vha->vha_tgt.qla_tgt;
 int login_code;

 if (!tgt || tgt->tgt_stop || tgt->tgt_stopped)
  return;

 if (((code == MBA_POINT_TO_POINT) || (code == MBA_CHG_IN_CONNECTION)) &&
     IS_QLA2100(ha))
  return;






 switch (code) {
 case 132:
 case 129:
 case 133:
 case 130:
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf03a,
      "qla_target(%d): System error async event %#x "
      "occurred", vha->vp_idx, code);
  break;
 case 128:
  set_bit(ISP_ABORT_NEEDED, &vha->dpc_flags);
  break;

 case 136:
 {
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf03b,
      "qla_target(%d): Async LOOP_UP occurred "
      "(m[0]=%x, m[1]=%x, m[2]=%x, m[3]=%x)", vha->vp_idx,
      le16_to_cpu(mailbox[0]), le16_to_cpu(mailbox[1]),
      le16_to_cpu(mailbox[2]), le16_to_cpu(mailbox[3]));
  if (tgt->link_reinit_iocb_pending) {
   qlt_send_notify_ack(ha->base_qpair,
       (void *)&tgt->link_reinit_iocb,
       0, 0, 0, 0, 0, 0);
   tgt->link_reinit_iocb_pending = 0;
  }
  break;
 }

 case 139:
 case 137:
 case 138:
 case 131:
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf03c,
      "qla_target(%d): Async event %#x occurred "
      "(m[0]=%x, m[1]=%x, m[2]=%x, m[3]=%x)", vha->vp_idx, code,
      le16_to_cpu(mailbox[0]), le16_to_cpu(mailbox[1]),
      le16_to_cpu(mailbox[2]), le16_to_cpu(mailbox[3]));
  break;

 case 134:
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf017,
      "qla_target(%d): Async event LS_REJECT occurred (m[0]=%x, m[1]=%x, m[2]=%x, m[3]=%x)",
      vha->vp_idx,
      le16_to_cpu(mailbox[0]), le16_to_cpu(mailbox[1]),
      le16_to_cpu(mailbox[2]), le16_to_cpu(mailbox[3]));

  if (le16_to_cpu(mailbox[3]) == 1) {

   vha->hw->exch_starvation++;
   if (vha->hw->exch_starvation > 5) {
    ql_log(ql_log_warn, vha, 0xd03a,
        "Exchange starvation-. Resetting RISC\n");

    vha->hw->exch_starvation = 0;
    if (IS_P3P_TYPE(vha->hw))
     set_bit(FCOE_CTX_RESET_NEEDED,
         &vha->dpc_flags);
    else
     set_bit(ISP_ABORT_NEEDED,
         &vha->dpc_flags);
    qla2xxx_wake_dpc(vha);
   }
  }
  break;

 case 135:
  ql_dbg(ql_dbg_tgt_mgt, vha, 0xf03d,
      "qla_target(%d): Port update async event %#x "
      "occurred: updating the ports database (m[0]=%x, m[1]=%x, "
      "m[2]=%x, m[3]=%x)", vha->vp_idx, code,
      le16_to_cpu(mailbox[0]), le16_to_cpu(mailbox[1]),
      le16_to_cpu(mailbox[2]), le16_to_cpu(mailbox[3]));

  login_code = le16_to_cpu(mailbox[2]);
  if (login_code == 0x4) {
   ql_dbg(ql_dbg_tgt_mgt, vha, 0xf03e,
       "Async MB 2: Got PLOGI Complete\n");
   vha->hw->exch_starvation = 0;
  } else if (login_code == 0x7)
   ql_dbg(ql_dbg_tgt_mgt, vha, 0xf03f,
       "Async MB 2: Port Logged Out\n");
  break;
 default:
  break;
 }

}
