
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_task {scalar_t__ hdr; struct beiscsi_io_task* dd_data; } ;
struct iscsi_logout_rsp {int t2wait; int itt; scalar_t__ hlength; scalar_t__* dlength; void* max_cmdsn; void* exp_cmdsn; int response; int flags; scalar_t__ t2retain; int opcode; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {int dummy; } ;
struct common_sol_cqe {scalar_t__ cmd_wnd; scalar_t__ exp_cmdsn; int i_resp; int i_flags; } ;
struct beiscsi_io_task {int libiscsi_itt; } ;
struct beiscsi_conn {struct iscsi_conn* conn; } ;


 int ISCSI_OP_LOGOUT_RSP ;
 int __iscsi_complete_pdu (struct iscsi_conn*,struct iscsi_hdr*,int *,int ) ;
 void* cpu_to_be32 (scalar_t__) ;

__attribute__((used)) static void
be_complete_logout(struct beiscsi_conn *beiscsi_conn,
      struct iscsi_task *task,
      struct common_sol_cqe *csol_cqe)
{
 struct iscsi_logout_rsp *hdr;
 struct beiscsi_io_task *io_task = task->dd_data;
 struct iscsi_conn *conn = beiscsi_conn->conn;

 hdr = (struct iscsi_logout_rsp *)task->hdr;
 hdr->opcode = ISCSI_OP_LOGOUT_RSP;
 hdr->t2wait = 5;
 hdr->t2retain = 0;
 hdr->flags = csol_cqe->i_flags;
 hdr->response = csol_cqe->i_resp;
 hdr->exp_cmdsn = cpu_to_be32(csol_cqe->exp_cmdsn);
 hdr->max_cmdsn = cpu_to_be32(csol_cqe->exp_cmdsn +
         csol_cqe->cmd_wnd - 1);

 hdr->dlength[0] = 0;
 hdr->dlength[1] = 0;
 hdr->dlength[2] = 0;
 hdr->hlength = 0;
 hdr->itt = io_task->libiscsi_itt;
 __iscsi_complete_pdu(conn, (struct iscsi_hdr *)hdr, ((void*)0), 0);
}
