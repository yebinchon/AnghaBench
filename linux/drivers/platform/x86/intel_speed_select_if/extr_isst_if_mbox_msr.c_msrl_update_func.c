
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msrl_action {TYPE_1__* mbox_cmd; int err; } ;
struct TYPE_2__ {int resp_data; int req_data; int parameter; int sub_command; int command; } ;


 int isst_if_send_mbox_cmd (int ,int ,int ,int ,int *) ;

__attribute__((used)) static void msrl_update_func(void *info)
{
 struct msrl_action *act = info;

 act->err = isst_if_send_mbox_cmd(act->mbox_cmd->command,
      act->mbox_cmd->sub_command,
      act->mbox_cmd->parameter,
      act->mbox_cmd->req_data,
      &act->mbox_cmd->resp_data);
}
