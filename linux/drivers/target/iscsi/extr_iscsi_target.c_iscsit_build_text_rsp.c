
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iscsi_text_rsp {int flags; void* max_cmdsn; void* exp_cmdsn; void* statsn; void* ttt; int itt; int dlength; int opcode; } ;
struct iscsi_conn {int cid; TYPE_1__* sess; int stat_sn; } ;
struct iscsi_cmd {int read_data_done; int targ_xfer_tag; int stat_sn; int init_task_tag; scalar_t__ maxcmdsn_inc; } ;
typedef enum iscsit_transport_type { ____Placeholder_iscsit_transport_type } iscsit_transport_type ;
struct TYPE_3__ {int exp_cmd_sn; int max_cmd_sn; } ;


 int ISCSI_FLAG_CMD_FINAL ;
 int ISCSI_FLAG_TEXT_CONTINUE ;
 int ISCSI_OP_TEXT_RSP ;
 scalar_t__ atomic_read (int *) ;
 void* cpu_to_be32 (int) ;
 int hton24 (int ,int) ;
 int iscsit_build_sendtargets_response (struct iscsi_cmd*,int,int,int*) ;
 int iscsit_increment_maxcmdsn (struct iscsi_cmd*,TYPE_1__*) ;
 int pr_debug (char*,int ,int,int,int,int ,int,int) ;
 int session_get_next_ttt (TYPE_1__*) ;

int
iscsit_build_text_rsp(struct iscsi_cmd *cmd, struct iscsi_conn *conn,
        struct iscsi_text_rsp *hdr,
        enum iscsit_transport_type network_transport)
{
 int text_length, padding;
 bool completed = 1;

 text_length = iscsit_build_sendtargets_response(cmd, network_transport,
       cmd->read_data_done,
       &completed);
 if (text_length < 0)
  return text_length;

 if (completed) {
  hdr->flags = ISCSI_FLAG_CMD_FINAL;
 } else {
  hdr->flags = ISCSI_FLAG_TEXT_CONTINUE;
  cmd->read_data_done += text_length;
  if (cmd->targ_xfer_tag == 0xFFFFFFFF)
   cmd->targ_xfer_tag = session_get_next_ttt(conn->sess);
 }
 hdr->opcode = ISCSI_OP_TEXT_RSP;
 padding = ((-text_length) & 3);
 hton24(hdr->dlength, text_length);
 hdr->itt = cmd->init_task_tag;
 hdr->ttt = cpu_to_be32(cmd->targ_xfer_tag);
 cmd->stat_sn = conn->stat_sn++;
 hdr->statsn = cpu_to_be32(cmd->stat_sn);

 iscsit_increment_maxcmdsn(cmd, conn->sess);





 cmd->maxcmdsn_inc = 0;
 hdr->exp_cmdsn = cpu_to_be32(conn->sess->exp_cmd_sn);
 hdr->max_cmdsn = cpu_to_be32((u32) atomic_read(&conn->sess->max_cmd_sn));

 pr_debug("Built Text Response: ITT: 0x%08x, TTT: 0x%08x, StatSN: 0x%08x,"
  " Length: %u, CID: %hu F: %d C: %d\n", cmd->init_task_tag,
  cmd->targ_xfer_tag, cmd->stat_sn, text_length, conn->cid,
  !!(hdr->flags & ISCSI_FLAG_CMD_FINAL),
  !!(hdr->flags & ISCSI_FLAG_TEXT_CONTINUE));

 return text_length + padding;
}
