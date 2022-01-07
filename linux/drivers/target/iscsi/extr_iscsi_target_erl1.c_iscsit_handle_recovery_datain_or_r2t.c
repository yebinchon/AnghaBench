
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_conn {int dummy; } ;
struct iscsi_cmd {int data_direction; } ;
typedef int itt_t ;




 struct iscsi_cmd* iscsit_find_cmd_from_itt (struct iscsi_conn*,int ) ;
 int iscsit_handle_r2t_snack (struct iscsi_cmd*,unsigned char*,int ,int ) ;
 int iscsit_handle_recovery_datain (struct iscsi_cmd*,unsigned char*,int ,int ) ;
 int pr_err (char*,int) ;

int iscsit_handle_recovery_datain_or_r2t(
 struct iscsi_conn *conn,
 unsigned char *buf,
 itt_t init_task_tag,
 u32 targ_xfer_tag,
 u32 begrun,
 u32 runlength)
{
 struct iscsi_cmd *cmd;

 cmd = iscsit_find_cmd_from_itt(conn, init_task_tag);
 if (!cmd)
  return 0;




 switch (cmd->data_direction) {
 case 128:
  return iscsit_handle_r2t_snack(cmd, buf, begrun, runlength);
 case 129:
  return iscsit_handle_recovery_datain(cmd, buf, begrun,
    runlength);
 default:
  pr_err("Unknown cmd->data_direction: 0x%02x\n",
    cmd->data_direction);
  return -1;
 }

 return 0;
}
