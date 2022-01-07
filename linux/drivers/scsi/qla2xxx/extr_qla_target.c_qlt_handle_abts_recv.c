
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_qla_host {TYPE_2__* hw; } ;
struct rsp_que {int dummy; } ;
struct qla_tgt_sess_op {int work; struct rsp_que* rsp; int chip_reset; struct scsi_qla_host* vha; int atio; } ;
typedef int response_t ;
struct TYPE_4__ {TYPE_1__* base_qpair; } ;
struct TYPE_3__ {int chip_reset; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct qla_tgt_sess_op* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int qla_tgt_wq ;
 int qlt_handle_abts_recv_work ;
 int qlt_response_pkt_all_vps (struct scsi_qla_host*,struct rsp_que*,int *) ;
 int queue_work (int ,int *) ;

void
qlt_handle_abts_recv(struct scsi_qla_host *vha, struct rsp_que *rsp,
    response_t *pkt)
{
 struct qla_tgt_sess_op *op;

 op = kzalloc(sizeof(*op), GFP_ATOMIC);

 if (!op) {



  qlt_response_pkt_all_vps(vha, rsp, pkt);
  return;
 }

 memcpy(&op->atio, pkt, sizeof(*pkt));
 op->vha = vha;
 op->chip_reset = vha->hw->base_qpair->chip_reset;
 op->rsp = rsp;
 INIT_WORK(&op->work, qlt_handle_abts_recv_work);
 queue_work(qla_tgt_wq, &op->work);
 return;
}
