
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct iscsi_conn {TYPE_3__* conn_transport; int cid; TYPE_2__* sess; int stat_sn; } ;
struct iscsi_cmd {int targ_xfer_tag; int logout_cid; scalar_t__ stat_sn; int init_task_tag; scalar_t__ pdu; void* iscsi_opcode; } ;
struct iscsi_async {void* param3; void* param2; void* param1; int async_event; void* max_cmdsn; void* exp_cmdsn; void* statsn; int * rsvd4; int flags; void* opcode; } ;
struct TYPE_6__ {int (* iscsit_xmit_pdu ) (struct iscsi_conn*,struct iscsi_cmd*,int *,int *,int ) ;} ;
struct TYPE_5__ {TYPE_1__* sess_ops; int max_cmd_sn; scalar_t__ exp_cmd_sn; } ;
struct TYPE_4__ {int DefaultTime2Retain; int DefaultTime2Wait; } ;


 int ISCSI_ASYNC_MSG_DROPPING_CONNECTION ;
 int ISCSI_FLAG_CMD_FINAL ;
 void* ISCSI_OP_ASYNC_EVENT ;
 int RESERVED_ITT ;
 scalar_t__ atomic_read (int *) ;
 void* cpu_to_be16 (int ) ;
 void* cpu_to_be32 (scalar_t__) ;
 int pr_debug (char*,scalar_t__,int ,int ) ;
 int put_unaligned_be64 (int,int *) ;
 int stub1 (struct iscsi_conn*,struct iscsi_cmd*,int *,int *,int ) ;

__attribute__((used)) static int iscsit_send_conn_drop_async_message(
 struct iscsi_cmd *cmd,
 struct iscsi_conn *conn)
{
 struct iscsi_async *hdr;

 cmd->iscsi_opcode = ISCSI_OP_ASYNC_EVENT;

 hdr = (struct iscsi_async *) cmd->pdu;
 hdr->opcode = ISCSI_OP_ASYNC_EVENT;
 hdr->flags = ISCSI_FLAG_CMD_FINAL;
 cmd->init_task_tag = RESERVED_ITT;
 cmd->targ_xfer_tag = 0xFFFFFFFF;
 put_unaligned_be64(0xFFFFFFFFFFFFFFFFULL, &hdr->rsvd4[0]);
 cmd->stat_sn = conn->stat_sn++;
 hdr->statsn = cpu_to_be32(cmd->stat_sn);
 hdr->exp_cmdsn = cpu_to_be32(conn->sess->exp_cmd_sn);
 hdr->max_cmdsn = cpu_to_be32((u32) atomic_read(&conn->sess->max_cmd_sn));
 hdr->async_event = ISCSI_ASYNC_MSG_DROPPING_CONNECTION;
 hdr->param1 = cpu_to_be16(cmd->logout_cid);
 hdr->param2 = cpu_to_be16(conn->sess->sess_ops->DefaultTime2Wait);
 hdr->param3 = cpu_to_be16(conn->sess->sess_ops->DefaultTime2Retain);

 pr_debug("Sending Connection Dropped Async Message StatSN:"
  " 0x%08x, for CID: %hu on CID: %hu\n", cmd->stat_sn,
   cmd->logout_cid, conn->cid);

 return conn->conn_transport->iscsit_xmit_pdu(conn, cmd, ((void*)0), ((void*)0), 0);
}
