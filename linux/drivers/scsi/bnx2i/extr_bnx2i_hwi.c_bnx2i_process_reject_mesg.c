
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_session {int back_lock; } ;
struct iscsi_reject {void* ffffffff; void* exp_cmdsn; void* max_cmdsn; int dlength; int reason; int opcode; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {int data; } ;
struct cqe {int dummy; } ;
struct bnx2i_reject_msg {int data_length; int exp_cmd_sn; int max_cmd_sn; int reason; int op_code; } ;
struct TYPE_4__ {int resp_hdr; } ;
struct bnx2i_conn {TYPE_2__ gen_pdu; TYPE_1__* cls_conn; } ;
struct TYPE_3__ {struct iscsi_conn* dd_data; } ;


 int RESERVED_ITT ;
 int __iscsi_complete_pdu (struct iscsi_conn*,struct iscsi_hdr*,int ,int ) ;
 int bnx2i_get_rq_buf (struct bnx2i_conn*,int ,int ) ;
 int bnx2i_put_rq_buf (struct bnx2i_conn*,int) ;
 int bnx2i_unsol_pdu_adjust_rq (struct bnx2i_conn*) ;
 void* cpu_to_be32 (int ) ;
 int hton24 (int ,int ) ;
 int memset (struct iscsi_reject*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void bnx2i_process_reject_mesg(struct iscsi_session *session,
          struct bnx2i_conn *bnx2i_conn,
          struct cqe *cqe)
{
 struct iscsi_conn *conn = bnx2i_conn->cls_conn->dd_data;
 struct bnx2i_reject_msg *reject;
 struct iscsi_reject *hdr;

 reject = (struct bnx2i_reject_msg *) cqe;
 if (reject->data_length) {
  bnx2i_get_rq_buf(bnx2i_conn, conn->data, reject->data_length);
  bnx2i_put_rq_buf(bnx2i_conn, 1);
 } else
  bnx2i_unsol_pdu_adjust_rq(bnx2i_conn);

 spin_lock(&session->back_lock);
 hdr = (struct iscsi_reject *) &bnx2i_conn->gen_pdu.resp_hdr;
 memset(hdr, 0, sizeof(struct iscsi_hdr));
 hdr->opcode = reject->op_code;
 hdr->reason = reject->reason;
 hton24(hdr->dlength, reject->data_length);
 hdr->max_cmdsn = cpu_to_be32(reject->max_cmd_sn);
 hdr->exp_cmdsn = cpu_to_be32(reject->exp_cmd_sn);
 hdr->ffffffff = cpu_to_be32(RESERVED_ITT);
 __iscsi_complete_pdu(conn, (struct iscsi_hdr *)hdr, conn->data,
        reject->data_length);
 spin_unlock(&session->back_lock);
}
