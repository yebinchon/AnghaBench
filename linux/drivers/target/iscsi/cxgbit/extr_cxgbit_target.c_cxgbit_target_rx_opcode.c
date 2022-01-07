
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iscsi_hdr {int opcode; int itt; int ttt; } ;
struct iscsi_conn {int conn_logout_comp; } ;
struct iscsi_cmd {int dummy; } ;
struct cxgbit_sock {struct iscsi_conn* conn; int skb; } ;
struct cxgbit_lro_pdu_cb {scalar_t__ hdr; } ;


 int EINVAL ;
 int HZ ;
 int ISCSI_OPCODE_MASK ;







 int ISCSI_REASON_BOOKMARK_NO_RESOURCES ;
 int SECONDS_FOR_LOGOUT_COMP ;
 int cpu_to_be32 (int) ;
 struct iscsi_cmd* cxgbit_allocate_cmd (struct cxgbit_sock*) ;
 int cxgbit_handle_iscsi_dataout (struct cxgbit_sock*) ;
 int cxgbit_handle_nop_out (struct cxgbit_sock*,struct iscsi_cmd*) ;
 int cxgbit_handle_scsi_cmd (struct cxgbit_sock*,struct iscsi_cmd*) ;
 int cxgbit_handle_text_cmd (struct cxgbit_sock*,struct iscsi_cmd*) ;
 struct cxgbit_lro_pdu_cb* cxgbit_rx_pdu_cb (int ) ;
 int dump_stack () ;
 int iscsit_add_reject (struct iscsi_conn*,int ,unsigned char*) ;
 struct iscsi_cmd* iscsit_find_cmd_from_itt (struct iscsi_conn*,int ) ;
 int iscsit_handle_logout_cmd (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ;
 int iscsit_handle_snack (struct iscsi_conn*,unsigned char*) ;
 int iscsit_handle_task_mgt_cmd (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ;
 int pr_err (char*,int) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int cxgbit_target_rx_opcode(struct cxgbit_sock *csk)
{
 struct cxgbit_lro_pdu_cb *pdu_cb = cxgbit_rx_pdu_cb(csk->skb);
 struct iscsi_hdr *hdr = (struct iscsi_hdr *)pdu_cb->hdr;
 struct iscsi_conn *conn = csk->conn;
 struct iscsi_cmd *cmd = ((void*)0);
 u8 opcode = (hdr->opcode & ISCSI_OPCODE_MASK);
 int ret = -EINVAL;

 switch (opcode) {
 case 132:
  cmd = cxgbit_allocate_cmd(csk);
  if (!cmd)
   goto reject;

  ret = cxgbit_handle_scsi_cmd(csk, cmd);
  break;
 case 131:
  ret = cxgbit_handle_iscsi_dataout(csk);
  break;
 case 133:
  if (hdr->ttt == cpu_to_be32(0xFFFFFFFF)) {
   cmd = cxgbit_allocate_cmd(csk);
   if (!cmd)
    goto reject;
  }

  ret = cxgbit_handle_nop_out(csk, cmd);
  break;
 case 130:
  cmd = cxgbit_allocate_cmd(csk);
  if (!cmd)
   goto reject;

  ret = iscsit_handle_task_mgt_cmd(conn, cmd,
       (unsigned char *)hdr);
  break;
 case 128:
  if (hdr->ttt != cpu_to_be32(0xFFFFFFFF)) {
   cmd = iscsit_find_cmd_from_itt(conn, hdr->itt);
   if (!cmd)
    goto reject;
  } else {
   cmd = cxgbit_allocate_cmd(csk);
   if (!cmd)
    goto reject;
  }

  ret = cxgbit_handle_text_cmd(csk, cmd);
  break;
 case 134:
  cmd = cxgbit_allocate_cmd(csk);
  if (!cmd)
   goto reject;

  ret = iscsit_handle_logout_cmd(conn, cmd, (unsigned char *)hdr);
  if (ret > 0)
   wait_for_completion_timeout(&conn->conn_logout_comp,
          SECONDS_FOR_LOGOUT_COMP
          * HZ);
  break;
 case 129:
  ret = iscsit_handle_snack(conn, (unsigned char *)hdr);
  break;
 default:
  pr_err("Got unknown iSCSI OpCode: 0x%02x\n", opcode);
  dump_stack();
  break;
 }

 return ret;

reject:
 return iscsit_add_reject(conn, ISCSI_REASON_BOOKMARK_NO_RESOURCES,
     (unsigned char *)hdr);
 return ret;
}
