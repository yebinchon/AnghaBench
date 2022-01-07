
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct iscsi_task {TYPE_3__* hdr; } ;
struct iscsi_session {int back_lock; } ;
struct iscsi_nopin {int lun; void* ttt; scalar_t__ itt; int flags; void* exp_cmdsn; void* max_cmdsn; int opcode; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {int dummy; } ;
struct cqe {int dummy; } ;
struct bnx2i_nop_in_msg {int itt; int lun; int ttt; int exp_cmd_sn; int max_cmd_sn; int op_code; } ;
struct TYPE_5__ {int resp_hdr; } ;
struct bnx2i_conn {TYPE_2__ gen_pdu; TYPE_1__* cls_conn; } ;
typedef int itt_t ;
struct TYPE_6__ {scalar_t__ itt; } ;
struct TYPE_4__ {struct iscsi_conn* dd_data; } ;


 int ISCSI_FLAG_CMD_FINAL ;
 int ISCSI_NOP_IN_MSG_INDEX ;
 scalar_t__ RESERVED_ITT ;
 int __iscsi_complete_pdu (struct iscsi_conn*,struct iscsi_hdr*,int *,int ) ;
 int bnx2i_unsol_pdu_adjust_rq (struct bnx2i_conn*) ;
 void* cpu_to_be32 (int ) ;
 struct iscsi_task* iscsi_itt_to_task (struct iscsi_conn*,int ) ;
 int memcpy (int *,int ,int) ;
 int memset (struct iscsi_nopin*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int bnx2i_process_nopin_mesg(struct iscsi_session *session,
         struct bnx2i_conn *bnx2i_conn,
         struct cqe *cqe)
{
 struct iscsi_conn *conn = bnx2i_conn->cls_conn->dd_data;
 struct iscsi_task *task;
 struct bnx2i_nop_in_msg *nop_in;
 struct iscsi_nopin *hdr;
 int tgt_async_nop = 0;

 nop_in = (struct bnx2i_nop_in_msg *)cqe;

 spin_lock(&session->back_lock);
 hdr = (struct iscsi_nopin *)&bnx2i_conn->gen_pdu.resp_hdr;
 memset(hdr, 0, sizeof(struct iscsi_hdr));
 hdr->opcode = nop_in->op_code;
 hdr->max_cmdsn = cpu_to_be32(nop_in->max_cmd_sn);
 hdr->exp_cmdsn = cpu_to_be32(nop_in->exp_cmd_sn);
 hdr->ttt = cpu_to_be32(nop_in->ttt);

 if (nop_in->itt == (u16) RESERVED_ITT) {
  bnx2i_unsol_pdu_adjust_rq(bnx2i_conn);
  hdr->itt = RESERVED_ITT;
  tgt_async_nop = 1;
  goto done;
 }


 task = iscsi_itt_to_task(conn,
    (itt_t) (nop_in->itt & ISCSI_NOP_IN_MSG_INDEX));
 if (task) {
  hdr->flags = ISCSI_FLAG_CMD_FINAL;
  hdr->itt = task->hdr->itt;
  hdr->ttt = cpu_to_be32(nop_in->ttt);
  memcpy(&hdr->lun, nop_in->lun, 8);
 }
done:
 __iscsi_complete_pdu(conn, (struct iscsi_hdr *)hdr, ((void*)0), 0);
 spin_unlock(&session->back_lock);

 return tgt_async_nop;
}
