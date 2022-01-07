
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iscsi_reject_hdr {int hdr_second_dword; int max_cmd_sn; int exp_cmd_sn; int stat_sn; int hdr_flags; int hdr_reason; int opcode; } ;
struct TYPE_6__ {struct iscsi_reject_hdr reject; } ;
struct TYPE_7__ {scalar_t__ cqe_type; TYPE_2__ iscsi_hdr; } ;
union iscsi_cqe {int cqe_unsolicited; TYPE_3__ cqe_common; } ;
typedef int uint16_t ;
typedef int u32 ;
struct qedi_ctx {int hba_lock; } ;
struct TYPE_8__ {int resp_hdr; } ;
struct qedi_conn {TYPE_4__ gen_pdu; TYPE_1__* cls_conn; } ;
struct iscsi_task {int dummy; } ;
struct iscsi_session {int back_lock; } ;
struct iscsi_reject {void* ffffffff; void* statsn; void* exp_cmdsn; void* max_cmdsn; int dlength; int flags; int reason; int opcode; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {int data; struct iscsi_session* session; } ;
struct TYPE_5__ {struct iscsi_conn* dd_data; } ;


 scalar_t__ ISCSI_CQE_TYPE_UNSOLICITED ;
 int ISCSI_REJECT_HDR_DATA_SEG_LEN_MASK ;
 int QEDI_BDQ_BUF_SIZE ;
 int __iscsi_complete_pdu (struct iscsi_conn*,struct iscsi_hdr*,int ,int) ;
 void* cpu_to_be32 (int) ;
 int hton24 (int ,int) ;
 int memset (struct iscsi_reject*,int ,int) ;
 int qedi_unsol_pdu_adjust_bdq (struct qedi_ctx*,int *,int,int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_bh (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qedi_process_reject_mesg(struct qedi_ctx *qedi,
         union iscsi_cqe *cqe,
         struct iscsi_task *task,
         struct qedi_conn *qedi_conn,
         uint16_t que_idx)
{
 struct iscsi_conn *conn = qedi_conn->cls_conn->dd_data;
 struct iscsi_session *session = conn->session;
 struct iscsi_reject_hdr *cqe_reject;
 struct iscsi_reject *hdr;
 u32 pld_len, num_bdqs;
 unsigned long flags;

 spin_lock_bh(&session->back_lock);
 cqe_reject = &cqe->cqe_common.iscsi_hdr.reject;
 pld_len = cqe_reject->hdr_second_dword &
    ISCSI_REJECT_HDR_DATA_SEG_LEN_MASK;
 num_bdqs = pld_len / QEDI_BDQ_BUF_SIZE;

 if (cqe->cqe_common.cqe_type == ISCSI_CQE_TYPE_UNSOLICITED) {
  spin_lock_irqsave(&qedi->hba_lock, flags);
  qedi_unsol_pdu_adjust_bdq(qedi, &cqe->cqe_unsolicited,
       pld_len, num_bdqs, conn->data);
  spin_unlock_irqrestore(&qedi->hba_lock, flags);
 }
 hdr = (struct iscsi_reject *)&qedi_conn->gen_pdu.resp_hdr;
 memset(hdr, 0, sizeof(struct iscsi_hdr));
 hdr->opcode = cqe_reject->opcode;
 hdr->reason = cqe_reject->hdr_reason;
 hdr->flags = cqe_reject->hdr_flags;
 hton24(hdr->dlength, (cqe_reject->hdr_second_dword &
         ISCSI_REJECT_HDR_DATA_SEG_LEN_MASK));
 hdr->max_cmdsn = cpu_to_be32(cqe_reject->max_cmd_sn);
 hdr->exp_cmdsn = cpu_to_be32(cqe_reject->exp_cmd_sn);
 hdr->statsn = cpu_to_be32(cqe_reject->stat_sn);
 hdr->ffffffff = cpu_to_be32(0xffffffff);

 __iscsi_complete_pdu(conn, (struct iscsi_hdr *)hdr,
        conn->data, pld_len);
 spin_unlock_bh(&session->back_lock);
}
