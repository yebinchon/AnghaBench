
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_hdr {int opcode; int itt; int ttt; } ;
struct iscsi_conn {TYPE_2__* sess; int conn_logout_comp; } ;
struct iscsi_cmd {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {int ErrorRecoveryLevel; } ;


 int HZ ;
 int ISCSI_OPCODE_MASK ;







 int ISCSI_REASON_BOOKMARK_NO_RESOURCES ;
 int SECONDS_FOR_LOGOUT_COMP ;
 int TASK_INTERRUPTIBLE ;
 int cpu_to_be32 (int) ;
 int iscsit_add_reject (struct iscsi_conn*,int ,unsigned char*) ;
 struct iscsi_cmd* iscsit_allocate_cmd (struct iscsi_conn*,int ) ;
 struct iscsi_cmd* iscsit_find_cmd_from_itt (struct iscsi_conn*,int ) ;
 int iscsit_handle_data_out (struct iscsi_conn*,unsigned char*) ;
 int iscsit_handle_logout_cmd (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ;
 int iscsit_handle_nop_out (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ;
 int iscsit_handle_scsi_cmd (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ;
 int iscsit_handle_snack (struct iscsi_conn*,unsigned char*) ;
 int iscsit_handle_task_mgt_cmd (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ;
 int iscsit_handle_text_cmd (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ;
 int pr_err (char*,...) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int iscsi_target_rx_opcode(struct iscsi_conn *conn, unsigned char *buf)
{
 struct iscsi_hdr *hdr = (struct iscsi_hdr *)buf;
 struct iscsi_cmd *cmd;
 int ret = 0;

 switch (hdr->opcode & ISCSI_OPCODE_MASK) {
 case 132:
  cmd = iscsit_allocate_cmd(conn, TASK_INTERRUPTIBLE);
  if (!cmd)
   goto reject;

  ret = iscsit_handle_scsi_cmd(conn, cmd, buf);
  break;
 case 131:
  ret = iscsit_handle_data_out(conn, buf);
  break;
 case 133:
  cmd = ((void*)0);
  if (hdr->ttt == cpu_to_be32(0xFFFFFFFF)) {
   cmd = iscsit_allocate_cmd(conn, TASK_INTERRUPTIBLE);
   if (!cmd)
    goto reject;
  }
  ret = iscsit_handle_nop_out(conn, cmd, buf);
  break;
 case 130:
  cmd = iscsit_allocate_cmd(conn, TASK_INTERRUPTIBLE);
  if (!cmd)
   goto reject;

  ret = iscsit_handle_task_mgt_cmd(conn, cmd, buf);
  break;
 case 128:
  if (hdr->ttt != cpu_to_be32(0xFFFFFFFF)) {
   cmd = iscsit_find_cmd_from_itt(conn, hdr->itt);
   if (!cmd)
    goto reject;
  } else {
   cmd = iscsit_allocate_cmd(conn, TASK_INTERRUPTIBLE);
   if (!cmd)
    goto reject;
  }

  ret = iscsit_handle_text_cmd(conn, cmd, buf);
  break;
 case 134:
  cmd = iscsit_allocate_cmd(conn, TASK_INTERRUPTIBLE);
  if (!cmd)
   goto reject;

  ret = iscsit_handle_logout_cmd(conn, cmd, buf);
  if (ret > 0)
   wait_for_completion_timeout(&conn->conn_logout_comp,
     SECONDS_FOR_LOGOUT_COMP * HZ);
  break;
 case 129:
  ret = iscsit_handle_snack(conn, buf);
  break;
 default:
  pr_err("Got unknown iSCSI OpCode: 0x%02x\n", hdr->opcode);
  if (!conn->sess->sess_ops->ErrorRecoveryLevel) {
   pr_err("Cannot recover from unknown"
   " opcode while ERL=0, closing iSCSI connection.\n");
   return -1;
  }
  pr_err("Unable to recover from unknown opcode while OFMarker=No,"
         " closing iSCSI connection.\n");
  ret = -1;
  break;
 }

 return ret;
reject:
 return iscsit_add_reject(conn, ISCSI_REASON_BOOKMARK_NO_RESOURCES, buf);
}
