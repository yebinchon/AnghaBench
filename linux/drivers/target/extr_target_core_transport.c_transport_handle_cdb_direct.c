
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int transport_state; int t_state; int se_lun; } ;
typedef scalar_t__ sense_reason_t ;


 int CMD_T_ACTIVE ;
 int EINVAL ;
 int TRANSPORT_NEW_CMD ;
 int dump_stack () ;
 scalar_t__ in_interrupt () ;
 int pr_err (char*) ;
 scalar_t__ transport_generic_new_cmd (struct se_cmd*) ;
 int transport_generic_request_failure (struct se_cmd*,scalar_t__) ;

int transport_handle_cdb_direct(
 struct se_cmd *cmd)
{
 sense_reason_t ret;

 if (!cmd->se_lun) {
  dump_stack();
  pr_err("cmd->se_lun is NULL\n");
  return -EINVAL;
 }
 if (in_interrupt()) {
  dump_stack();
  pr_err("transport_generic_handle_cdb cannot be called"
    " from interrupt context\n");
  return -EINVAL;
 }
 cmd->t_state = TRANSPORT_NEW_CMD;
 cmd->transport_state |= CMD_T_ACTIVE;






 ret = transport_generic_new_cmd(cmd);
 if (ret)
  transport_generic_request_failure(cmd, ret);
 return 0;
}
