
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_text {int opcode; int cmdsn; int exp_statsn; int ttt; } ;
struct iscsi_conn {int cmd_lock; int conn_cmd_list; } ;
struct iscsi_cmd {unsigned char* text_in_ptr; int targ_xfer_tag; int i_conn_node; int cmd_flags; } ;


 int CMDSN_ERROR_CANNOT_RECOVER ;
 int ICF_SENDTARGETS_ALL ;
 int ICF_SENDTARGETS_SINGLE ;
 int ISCSI_OP_IMMEDIATE ;
 int ISCSI_REASON_PROTOCOL_ERROR ;
 int be32_to_cpu (int ) ;
 int iscsit_ack_from_expstatsn (struct iscsi_conn*,int) ;
 int iscsit_execute_cmd (struct iscsi_cmd*,int ) ;
 int iscsit_reject_cmd (struct iscsi_cmd*,int ,unsigned char*) ;
 int iscsit_sequence_cmd (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*,int ) ;
 int list_add_tail (int *,int *) ;
 int pr_err (char*,...) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 unsigned char* strchr (unsigned char*,char) ;
 scalar_t__ strncmp (char*,unsigned char*,int) ;

int
iscsit_process_text_cmd(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
   struct iscsi_text *hdr)
{
 unsigned char *text_in = cmd->text_in_ptr, *text_ptr;
 int cmdsn_ret;

 if (!text_in) {
  cmd->targ_xfer_tag = be32_to_cpu(hdr->ttt);
  if (cmd->targ_xfer_tag == 0xFFFFFFFF) {
   pr_err("Unable to locate text_in buffer for sendtargets"
          " discovery\n");
   goto reject;
  }
  goto empty_sendtargets;
 }
 if (strncmp("SendTargets", text_in, 11) != 0) {
  pr_err("Received Text Data that is not"
   " SendTargets, cannot continue.\n");
  goto reject;
 }
 text_ptr = strchr(text_in, '=');
 if (!text_ptr) {
  pr_err("No \"=\" separator found in Text Data,"
   "  cannot continue.\n");
  goto reject;
 }
 if (!strncmp("=All", text_ptr, 4)) {
  cmd->cmd_flags |= ICF_SENDTARGETS_ALL;
 } else if (!strncmp("=iqn.", text_ptr, 5) ||
     !strncmp("=eui.", text_ptr, 5)) {
  cmd->cmd_flags |= ICF_SENDTARGETS_SINGLE;
 } else {
  pr_err("Unable to locate valid SendTargets=%s value\n", text_ptr);
  goto reject;
 }

 spin_lock_bh(&conn->cmd_lock);
 list_add_tail(&cmd->i_conn_node, &conn->conn_cmd_list);
 spin_unlock_bh(&conn->cmd_lock);

empty_sendtargets:
 iscsit_ack_from_expstatsn(conn, be32_to_cpu(hdr->exp_statsn));

 if (!(hdr->opcode & ISCSI_OP_IMMEDIATE)) {
  cmdsn_ret = iscsit_sequence_cmd(conn, cmd,
    (unsigned char *)hdr, hdr->cmdsn);
  if (cmdsn_ret == CMDSN_ERROR_CANNOT_RECOVER)
   return -1;

  return 0;
 }

 return iscsit_execute_cmd(cmd, 0);

reject:
 return iscsit_reject_cmd(cmd, ISCSI_REASON_PROTOCOL_ERROR,
     (unsigned char *)hdr);
}
