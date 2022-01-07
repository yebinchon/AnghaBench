
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct msrl_action {long err; struct isst_if_mbox_cmd* mbox_cmd; } ;
struct isst_if_mbox_cmd {int req_data; int parameter; int logical_cpu; int sub_command; int command; } ;


 int CAP_SYS_ADMIN ;
 long EINVAL ;
 long EPERM ;
 int capable (int ) ;
 scalar_t__ isst_if_mbox_cmd_invalid (struct isst_if_mbox_cmd*) ;
 scalar_t__ isst_if_mbox_cmd_set_req (struct isst_if_mbox_cmd*) ;
 long isst_store_cmd (int ,int ,int ,int,int ,int ) ;
 int msrl_update_func ;
 int smp_call_function_single (int ,int ,struct msrl_action*,int) ;

__attribute__((used)) static long isst_if_mbox_proc_cmd(u8 *cmd_ptr, int *write_only, int resume)
{
 struct msrl_action action;
 int ret;

 action.mbox_cmd = (struct isst_if_mbox_cmd *)cmd_ptr;

 if (isst_if_mbox_cmd_invalid(action.mbox_cmd))
  return -EINVAL;

 if (isst_if_mbox_cmd_set_req(action.mbox_cmd) &&
     !capable(CAP_SYS_ADMIN))
  return -EPERM;
 ret = smp_call_function_single(action.mbox_cmd->logical_cpu,
           msrl_update_func, &action, 1);
 if (ret)
  return ret;

 if (!action.err && !resume && isst_if_mbox_cmd_set_req(action.mbox_cmd))
  action.err = isst_store_cmd(action.mbox_cmd->command,
         action.mbox_cmd->sub_command,
         action.mbox_cmd->logical_cpu, 1,
         action.mbox_cmd->parameter,
         action.mbox_cmd->req_data);
 *write_only = 0;

 return action.err;
}
