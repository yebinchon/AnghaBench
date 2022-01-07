
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int online; } ;
struct scsi_qla_host {TYPE_5__ flags; TYPE_4__* hw; } ;
struct qla_tgt_prm {int req_cnt; scalar_t__ pkt; int * sg; struct qla_tgt* tgt; struct qla_tgt_cmd* cmd; } ;
struct TYPE_15__ {scalar_t__ prot_op; } ;
struct qla_tgt_cmd {scalar_t__ reset_count; int aborted; int cmd_sent_to_fw; int ctio_flags; int state; TYPE_6__ se_cmd; scalar_t__ write_data_transferred; TYPE_1__* sess; struct qla_qpair* qpair; struct qla_tgt* tgt; struct scsi_qla_host* vha; } ;
struct qla_tgt {int dummy; } ;
struct qla_qpair {scalar_t__ chip_reset; int qp_lock_ptr; TYPE_9__* req; int (* reqq_start_iocbs ) (struct qla_qpair*) ;int fw_started; } ;
struct TYPE_16__ {int flags; } ;
struct TYPE_17__ {TYPE_7__ status0; } ;
struct ctio7_to_24xx {TYPE_8__ u; } ;
typedef int prm ;
struct TYPE_18__ {int cnt; } ;
struct TYPE_12__ {TYPE_2__* tgt_ops; } ;
struct TYPE_13__ {TYPE_3__ tgt; } ;
struct TYPE_11__ {int (* handle_data ) (struct qla_tgt_cmd*) ;} ;
struct TYPE_10__ {scalar_t__ deleted; } ;


 int CTIO7_FLAGS_DATA_OUT ;
 int CTIO7_FLAGS_STATUS_MODE_0 ;
 int EAGAIN ;
 int QLA_TGT_STATE_DATA_IN ;
 int QLA_TGT_STATE_NEED_DATA ;
 scalar_t__ TARGET_PROT_NORMAL ;
 int cpu_to_le16 (int) ;
 int le16_to_cpu (int ) ;
 int memset (struct qla_tgt_prm*,int ,int) ;
 int ql_dbg_async ;
 int ql_dbg_qp (int ,struct qla_qpair*,int,char*,int ,int ,scalar_t__,scalar_t__) ;
 int qla2x00_reset_active (struct scsi_qla_host*) ;
 int qla2x00_start_iocbs (struct scsi_qla_host*,TYPE_9__*) ;
 int qlt_24xx_build_ctio_pkt (struct qla_qpair*,struct qla_tgt_prm*) ;
 int qlt_build_ctio_crc2_pkt (struct qla_qpair*,struct qla_tgt_prm*) ;
 int qlt_check_reserve_free_req (struct qla_qpair*,int) ;
 int qlt_load_data_segments (struct qla_tgt_prm*) ;
 scalar_t__ qlt_pci_map_calc_cnt (struct qla_tgt_prm*) ;
 int qlt_unmap_sg (struct scsi_qla_host*,struct qla_tgt_cmd*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct qla_tgt_cmd*) ;
 int stub2 (struct qla_qpair*) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

int qlt_rdy_to_xfer(struct qla_tgt_cmd *cmd)
{
 struct ctio7_to_24xx *pkt;
 struct scsi_qla_host *vha = cmd->vha;
 struct qla_tgt *tgt = cmd->tgt;
 struct qla_tgt_prm prm;
 unsigned long flags = 0;
 int res = 0;
 struct qla_qpair *qpair = cmd->qpair;

 memset(&prm, 0, sizeof(prm));
 prm.cmd = cmd;
 prm.tgt = tgt;
 prm.sg = ((void*)0);
 prm.req_cnt = 1;


 if (qlt_pci_map_calc_cnt(&prm) != 0)
  return -EAGAIN;

 if (!qpair->fw_started || (cmd->reset_count != qpair->chip_reset) ||
     (cmd->sess && cmd->sess->deleted)) {




  cmd->aborted = 1;
  cmd->write_data_transferred = 0;
  cmd->state = QLA_TGT_STATE_DATA_IN;
  vha->hw->tgt.tgt_ops->handle_data(cmd);
  ql_dbg_qp(ql_dbg_async, qpair, 0xe102,
   "RESET-XFR online/active/old-count/new-count = %d/%d/%d/%d.\n",
   vha->flags.online, qla2x00_reset_active(vha),
   cmd->reset_count, qpair->chip_reset);
  return 0;
 }

 spin_lock_irqsave(qpair->qp_lock_ptr, flags);

 res = qlt_check_reserve_free_req(qpair, prm.req_cnt);
 if (res != 0)
  goto out_unlock_free_unmap;
 if (cmd->se_cmd.prot_op)
  res = qlt_build_ctio_crc2_pkt(qpair, &prm);
 else
  res = qlt_24xx_build_ctio_pkt(qpair, &prm);

 if (unlikely(res != 0)) {
  qpair->req->cnt += prm.req_cnt;
  goto out_unlock_free_unmap;
 }

 pkt = (struct ctio7_to_24xx *)prm.pkt;
 pkt->u.status0.flags |= cpu_to_le16(CTIO7_FLAGS_DATA_OUT |
     CTIO7_FLAGS_STATUS_MODE_0);

 if (cmd->se_cmd.prot_op == TARGET_PROT_NORMAL)
  qlt_load_data_segments(&prm);

 cmd->state = QLA_TGT_STATE_NEED_DATA;
 cmd->cmd_sent_to_fw = 1;
 cmd->ctio_flags = le16_to_cpu(pkt->u.status0.flags);


 wmb();
 if (qpair->reqq_start_iocbs)
  qpair->reqq_start_iocbs(qpair);
 else
  qla2x00_start_iocbs(vha, qpair->req);
 spin_unlock_irqrestore(qpair->qp_lock_ptr, flags);

 return res;

out_unlock_free_unmap:
 qlt_unmap_sg(vha, cmd);
 spin_unlock_irqrestore(qpair->qp_lock_ptr, flags);

 return res;
}
