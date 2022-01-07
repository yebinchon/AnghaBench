
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iscsi_conn {int dummy; } ;
struct iscsi_cmd {scalar_t__ acked_data_sn; int init_task_tag; int cmd_flags; } ;


 int ICF_GOT_DATACK_SNACK ;
 struct iscsi_cmd* iscsit_find_cmd_from_ttt (struct iscsi_conn*,scalar_t__) ;
 int pr_debug (char*,int ,scalar_t__) ;
 int pr_err (char*,scalar_t__,...) ;

int iscsit_handle_data_ack(
 struct iscsi_conn *conn,
 u32 targ_xfer_tag,
 u32 begrun,
 u32 runlength)
{
 struct iscsi_cmd *cmd = ((void*)0);

 cmd = iscsit_find_cmd_from_ttt(conn, targ_xfer_tag);
 if (!cmd) {
  pr_err("Data ACK SNACK for TTT: 0x%08x is"
   " invalid.\n", targ_xfer_tag);
  return -1;
 }

 if (begrun <= cmd->acked_data_sn) {
  pr_err("ITT: 0x%08x Data ACK SNACK BegRUN: 0x%08x is"
   " less than the already acked DataSN: 0x%08x.\n",
   cmd->init_task_tag, begrun, cmd->acked_data_sn);
  return -1;
 }





 cmd->cmd_flags |= ICF_GOT_DATACK_SNACK;
 cmd->acked_data_sn = (begrun - 1);

 pr_debug("Received Data ACK SNACK for ITT: 0x%08x,"
  " updated acked DataSN to 0x%08x.\n",
   cmd->init_task_tag, cmd->acked_data_sn);

 return 0;
}
